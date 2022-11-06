gRPC + Flutter + Golang = 😎
---

<br>

This repository is meant to be a reference on how to start a <strong>Flutter</strong> project
with custom backend based on <strong>gRPC</strong> and <strong> Golang</strong>. It is (at least I believe so)
not spaghetti code, so it should be great starter, easy to extend. Its current functionality is performing a query
entered by user and performing it on a wikipedia to scrap some information. (ok, scrapping is not implemented yet, I'll
do it when I get some sleep). 

If you fins something that can be improved, I'd be grateful for a Pull Request. Also feel free to 
reach out to me on Discord - Creatix#9999 - in order to discuss anything.

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

