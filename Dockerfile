FROM python:3.8
COPY requirements.txt .
RUN pip3.8 install -r requirements.txt

COPY Dz.ipynb .
RUN jupyter nbconvert --to html Dz.ipynb
