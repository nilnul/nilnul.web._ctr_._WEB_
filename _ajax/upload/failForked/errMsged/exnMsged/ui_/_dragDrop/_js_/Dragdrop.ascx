<%@ Control Language="C#" AutoEventWireup="true"  %>

Selecting files using drag and dropEdit

You can also let the user drag and drop files into your web application.

The first step is to establish a drop zone. Exactly what part of your content will accept drops may vary depending on the design of your application, but making an element receive drop events is easy:
var dropbox;

dropbox = document.getElementById("dropbox");
dropbox.addEventListener("dragenter", dragenter, false);
dropbox.addEventListener("dragover", dragover, false);
dropbox.addEventListener("drop", drop, false);123456

In this example, we're turning the element with the ID dropbox into our drop zone. This is done by adding listeners for the dragenter, dragover, and drop events.

We don't actually need to do anything with the dragenter and dragover events in our case, so these functions are both simple. They just stop propagation of the event and prevent the default action from occurring:
function dragenter(e) {
  e.stopPropagation();
  e.preventDefault();
}

function dragover(e) {
  e.stopPropagation();
  e.preventDefault();
}123456789

The real magic happens in the drop() function:
function drop(e) {
  e.stopPropagation();
  e.preventDefault();

  var dt = e.dataTransfer;
  var files = dt.files;

  handleFiles(files);
}123456789

Here, we retrieve the dataTransfer field from the event, pull the file list out of it, and then pass that to handleFiles(). From this point on, handling the files is the same whether the user used the input element or drag and drop.
