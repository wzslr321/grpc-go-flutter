package main

import (
	"context"
	"fmt"
	"github.com/gocolly/colly/v2"
	pb "github.com/wzslr321/grpc-go-flutter/server/gen/proto"
	"github.com/wzslr321/grpc-go-flutter/server/settings"
	"google.golang.org/grpc"
	"log"
	"net"
	"strings"
)

const devConfig = "/config/config_dev.ini"

func init() {
	_ = settings.InitSettings(devConfig)
}

type server struct {
	pb.UnimplementedQueryServer
}

func (s *server) PerformQuery(ctx context.Context, in *pb.QueryRequest) (*pb.QueryResponse, error) {
	c := colly.NewCollector()
	var result string
	c.OnHTML(".mw-parser-output", func(e *colly.HTMLElement) {
		firstP := strings.Split(e.ChildText("p"), "\n")[0]
		result = firstP
	})
	c.Visit(fmt.Sprintf("https://en.wikipedia.org/wiki/%s", in.Query))

	r := fmt.Sprintf("Result of query %s: %s", in.Query, result)

	return &pb.QueryResponse{Result: r}, nil
}

func main() {
	port := fmt.Sprintf(":%s", settings.ServerSettings.Port)
	listen, err := net.Listen("tcp", fmt.Sprintf("%s", port))
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}

	s := grpc.NewServer()
	pb.RegisterQueryServer(s, &server{})
	log.Printf("Server listening on port %v", listen.Addr())
	if err := s.Serve(listen); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}
