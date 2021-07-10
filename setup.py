from setuptools import find_packages, setup

setup(
    name='jamleap',
    version='1.0.0',
    packages=find_packages(),
    include_package_data=True,
    zip_safe=False,
    install_requires=[
        'scikit-build',
        'flask',
        'tencentcloud-sdk-python',
        'baidu-aip',
        'xlrd==1.2.0',
        # 'pdfplumber',
        'numpy',
        'imutils',
        'opencv-python',
        'openpyxl',
        'pdftotext',
        'camelot-py[cv]',
    ],
)
