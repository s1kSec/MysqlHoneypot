FROM qzkc/python2.7:v2
COPY ./ /mysqlhoneypot/
WORKDIR /mysqlhoneypot
RUN python -m pip install --upgrade pip
RUN pip install flask==1.0.2 -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
RUN pip install Flask-HTTPAuth==4.5.0

#如果很慢可以换源:
#RUN python -m pip install --upgrade pip -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
#RUN pip install flask==1.0.2 -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
#RUN pip install Flask-HTTPAuth==4.5.0 -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
#-------------------------
CMD ["python" , "main.py"]
