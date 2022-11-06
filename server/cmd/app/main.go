package main

import (
	"context"
	"fmt"
	pb "github.com/wzslr321/grpc-go-flutter/server/gen/proto"
	"github.com/wzslr321/grpc-go-flutter/server/settings"
	"google.golang.org/grpc"
	"log"
	"net"
)

const devConfig = "/config/config_dev.ini"

func init() {
	_ = settings.InitSettings(devConfig)
}

type server struct {
	pb.UnimplementedQueryServer
}

func (s *server) PerformQuery(ctx context.Context, in *pb.QueryRequest) (*pb.QueryResponse, error) {
	// I will add functionality of scrapping wikipedia here
	return &pb.QueryResponse{Result: "very good result of query: " + in.Query}, nil
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
