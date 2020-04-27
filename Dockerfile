FROM python:stretch


#COPY . /example
#WORKDIR /example
COPY . /Users/pedro/cursos/nanodegree/fullstack/Module_5/FSND-Deploy-Flask-App-to-Kubernetes-Using-EKS
WORKDIR /Users/pedro/cursos/nanodegree/fullstack/Module_5/FSND-Deploy-Flask-App-to-Kubernetes-Using-EKS

RUN pip install --upgrade pip
RUN pip install pytest==4.0.2
RUN pip install PyJWT
RUN pip install Flask
RUN pip install gunicorn
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":80", "main:APP"]