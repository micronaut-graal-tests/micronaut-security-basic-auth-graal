FROM oracle/graalvm-ce:19.2.1 as graalvm
COPY . /home/app/micronaut-security-basicauth-graal
WORKDIR /home/app/micronaut-security-basicauth-graal
RUN gu install native-image
RUN native-image --no-server --static -cp build/libs/micronaut-security-basicauth-graal-*-all.jar

FROM scratch
EXPOSE 8080
COPY --from=graalvm /home/app/micronaut-security-basicauth-graal .
ENTRYPOINT ["./micronaut-security-basicauth-graal"]
