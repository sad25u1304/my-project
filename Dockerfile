FROM ubuntu:22.04
RUN apt update && apt install -y g++
WORKDIR /app  
COPY . .
RUN cd rpn_calculator && g++ -Iinclude src/*.cpp -o calculator
CMD ["/app/rpn_calculator/calculator"]
