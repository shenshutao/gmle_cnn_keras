'''Cloud ML Engine package configuration.'''
from setuptools import setup, find_packages

setup(name='sunny_resnet',
      version='1.0',
      packages=find_packages(),
      include_package_data=True,
      description='Train cnn model on Cloud ML Engine',
      author='SHEN SHUTAO',
      author_email='sstwood@gmail.com',
      license='MIT',
      install_requires=[
          'keras',
          'Pillow'],
      zip_safe=False)
