package main

import (
	"fmt"
	"time"
)

func main() {
	for {
		fmt.Println("now is:", time.Now().Format("2006-01-02 15:04:05"))
		time.Sleep(time.Second)
	}
}
