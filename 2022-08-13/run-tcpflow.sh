#!/bin/bash

sudo tcpflow -i lo "dst host localhost && port 8080"
