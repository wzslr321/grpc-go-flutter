package settings

import (
	"github.com/wzslr321/grpc-go-flutter/server/config"
	"gopkg.in/ini.v1"
	"log"
)

type Server struct {
	Port string
}

var iniConfig *ini.File

var ServerSettings = &Server{}

func InitSettings(source string) error {
	var err error

	dir, _ := config.GetConfigDirPath()
	iniConfig, err = ini.Load(dir + source)
	if err != nil {
		log.Fatalf("settings setup, failed to parse %v' : %v", source, err)
		return err
	}

	_ = mapTo("server", ServerSettings)

	return nil
}

func mapTo(section string, v interface{}) error {
	err := iniConfig.Section(section).MapTo(v)
	if err != nil {
		log.Fatalf("Error while mapping to config or section: %v, \n %v", section, err)
		return err
	}
	return nil
}
