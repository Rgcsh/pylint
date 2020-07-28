# 项目介绍
* 此 pylint项目 是对 https://github.com/PyCQA/pylint 官方项目的二次开发,因为在中国,通过fork后,git clone总是失败,所以改为先下载代码再上传
* 此 pylint项目 依赖于 官方项目的 2.5.3 版本进行开发
* [官方github链接](https://github.com/PyCQA/pylint)

# 二次开发内容
* 添加了 校验 相对导入(relative-import) 的功能
* 校验规则为: 检查 每行代码 是否以  'from ..' 开始
* 修改文件为: pylint/checkers/imports.py

# 使用示例
* 案例 在 examples/relative_import_tests 文件夹中,通过 运行如下脚本得出示例结果:
    ```
    python use_pylint.py
    ```
* 输出结果如下:
    ```
    ************* Module te.sd.b
    te/sd/b.py:11:0: W0411: Hi,bro,Do not relative import in our company project!!! (relative-import)
    ```

# 禁用此功能方法(和其他相同)
* 所在代码尾部 添加 如下注释
    ```
    from ...relative_dir import num  # pylint:disable=relative-import
    ```
* 或者在 pylint.conf等 配置文件的 disable 栏目中添加 relative-import
