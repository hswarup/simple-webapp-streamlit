FROM ubuntu:16.04
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install streamlit
COPY app.py /opt/
ENTRYPOINT streamlit run app.py
