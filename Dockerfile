FROM python:3.6.7

ENV TZ Asia/Tokyo
ENV APP_ROOT /home/user
RUN useradd -m user
WORKDIR $APP_ROOT

COPY ./requirements.txt $APP_ROOT/requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

USER user

COPY . $APP_ROOT
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888"]
