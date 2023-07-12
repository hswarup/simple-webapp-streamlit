FROM ubuntu:16.04
RUN apt-get update && apt-get install -y python python-pip
RUN pip install streamlit
COPY app.py /opt/
ENTRYPOINT streamlit run app.py
