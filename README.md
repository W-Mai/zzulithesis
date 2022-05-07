# 郑州轻工业大学学位论文 LaTeX 模板


## 简介

本项目为郑州轻工业大学本科毕业论文LaTeX模板，提供了一套简单的LaTeX模板，可以快速生成论文。

## 使用

配置好项本地编译依赖环境以后，可以使用以下命令进行操作：
```
make 论文名称
```
论文项目存放在`./thesis`目录下，每一个项目单独存放。

### 本地编译

1. 安装 TeXLive 工具包，编译需要 XeTeX 引擎
2. 下载模板代码，下载本仓库到本地。
3. 在 `thesis/论文名称/论文名称.tex` 中 `\documentclass[]` 部分填写个人信息，其中以下信息用于控制文档的生成：

   - `Degree` 为 `undergraduate` 时，编译本科生论文：

   | Field      | Option 1                            | Option 2                              |
   | :--------- | :-----------------------------------| :------------------------------------ |
   |Type        | thesis: 论文类                       | design: 设计类                         |
   |Period      | proposal: 开题报告                   | final: 最终论文/设计                    |
   |BlindReview | true: 生成盲审用 pdf（隐藏个人信息）   | false: 生成提交用 pdf                   |
   |MajorFormat | general: 默认模板                    | 与 `config/format/major/` 下目录名相同  |

   - Debug 相关设置

   | Field         | Option 1                              | Option 2                              |
   | :------------ | :------------------------------------ | :------------------------------------ |
   | PrintFilePath | true: 在每页侧边打印该页对应 TeX 文件路径 | false: 不打印此输出                    |

4. 在 `thesis/论文名称/body` 目录下编写内容
5. 在 `thesis/论文名称/pages` 目录下填写必要的内容，如审核评语等
6. 在 `thesis/论文名称/figure` 目录下保存图片，在 `thesis/论文名称/body/ref.bib` 内插入文献条目
7. 在根目录下运行命令```make 论文名称```即可用 XeTeX 编译 pdf 文件到 `thesis/论文名称/out` 目录（该目录不会被记录版本）。**请务必使用此 `make` 命令进行编译（除非你已经了解 LaTeX 的工作机制），否则你可能遇到参考文献无法显示等问题**

> **注意**
>
> - 每年的三月底四月初会有 TeXLive 的版本升级，届时本模板会根据 TeXLive 的更新做出一定的修改，请在提交最终论文前查看并应用本模板的更新。
> - 如果你使用 Mac OS 10.15 及以上版本，并且 TexLive 中的 ctex 包版本低于 2.5，会产生[宋体字体判断问题](https://github.com/TheNetAdmin/zjuthesis/issues/79)，导致编译得到的 pdf 中字体出现误差。要解决这个问题，可以将 ctex 包升级到 2.5 以上，或者临时在 ctex 包的选项中加入 `fontset=macnew`，详见 [issue  79](https://github.com/TheNetAdmin/zjuthesis/issues/79)。
> - 本模板已经兼容 TeXLive 2021。TeXLive 2018 以及之前的版本复制伪粗体文字会产生乱码，建议使用本地 TeXLive 的同学使用最新版 TeXLive。


### 字数统计

本模板提供了一个脚本用于统计正文字数，请在根目录下使用 `latexmk` 编译一遍模板，然后执行脚本 `script/utils/word_count.sh`。
此脚本调用了 `texcount` 工具，该工具是 TeX Live 的一部分，不需要额外安装。


## 参考文档

本项目基于[zjuthesis-std](https://github.com/thenetadmin/zjuthesis)开发，所以相关文档详见如下：
常见问题与解决方案请参考[FAQ](./docs/FAQ.md)，模板使用请参考[使用手册](./docs/usage.md)，模板修改与二次开发请参考[开发手册](./docs/develop.md)。

本模板所使用的各专业规范文件请参考 [zjuthesis-std](https://github.com/thenetadmin/zjuthesis-std)。

## 贡献

对本项目最好的贡献方式是在 GitHub Issue 里提交你发现的 BUG，或者贡献 Pull Request。
如果你不熟悉 GitHub 的运作方式，也可以通过邮件联系我。

本项目提供了 LaTeX 模板，但并不负责教会用户使用各种 LaTeX 工具与环境。
与工具和环境有关的问题（例如 TeXStudio 如何处理参考文献）请先自行上网搜索解决方案。
在本项目的 GitHub Issue 里也已经有很多相关内容可供查阅。


## 开源许可

本项目代码基于 MIT 协议开源
