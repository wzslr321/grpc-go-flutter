gRPC + Flutter + Golang = 😎
---

<br>

This repository is  a reference on how to start a <strong>Flutter</strong> project
with a custom backend based on <strong>gRPC</strong> and <strong> Golang</strong>.
It is (at least I believe so) not a spaghetti code, so it should be a great starter, and easy to extend. 

It allows one to enter a query and send it with a request to the Golang backend server, which then performs it on Wikipedia to scrap information and return it as a result. All via gRPC.

---

<p align="center">
  Found it useful? Want more updates?
</p>

<p align =center>
  <strong> <i> Show your support by giving a :star: </strong> </i>
</p>

---

<br>

How to launch it locally?
---

In order to make it work, you need to run Golang server `go run cmd/app/main.go` and then run Flutter app. <br>
If you want to make changes to `.proto` file and regenerate the code, I created a small bash script that does it for you.
All you have to do is execute `sh generate.sh` from the `proto` directory.<br>

Quick demonstration
---

https://user-images.githubusercontent.com/59893892/200149870-75bc2e85-c969-4ddc-9fad-fcc0a27745b9.mp4

