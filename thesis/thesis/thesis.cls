\newcommand{\inputCommon}[1]{\input{../../#1}}
\newcommand{\IfFileExistsCommon}[1]{\IfFileExists{../../#1}}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}
    [Zhengzhou University of Light Industry Thesis and Design Template, W_Mai 1341398182@qq.com]
\inputCommon{config/version}
\wlog{thesis version: \zzulithesisversion}

\RequirePackage{kvoptions}

\SetupKeyvalOptions{
    family=thesis,
    prefix=
}
\DeclareStringOption{StudentName}
\DeclareStringOption{StudentID}
\DeclareStringOption{AdvisorName}
\DeclareStringOption{Grade}
\DeclareStringOption{Major}
\DeclareStringOption{Department}
\DeclareStringOption{Topic}
\DeclareStringOption{Title}
\DeclareStringOption{TitleEng}
\DeclareStringOption{SubmitDate}
\DeclareStringOption[undergraduate]{Degree}
\DeclareStringOption[general]{MajorFormat}
\DeclareStringOption[thesis]{Type}
\DeclareStringOption[proposal]{Period}
\DeclareStringOption[chinese]{Language}
\DeclareStringOption[false]{BlindReview}
\DeclareStringOption[false]{PrintFilePath}
\DeclareStringOption[true]{TwoSide}
\DeclareStringOption{Deadline}

\ProcessKeyvalOptions*

\wlog{Degree: {\Degree}}
\wlog{MajorFormat: {\MajorFormat}}
\wlog{Type: {\Type}}
\wlog{Period: {\Period}}
\wlog{BlindReview: {\BlindReview}}
\wlog{Language: {\Language}}
\wlog{PrintFilePath: {\PrintFilePath}}

\PassOptionsToPackage{no-math}{fontspec}
\PassOptionsToPackage{AutoFakeBold}{xeCJK}

\usepackage{xifthen}

\ifthenelse{\equal{\TwoSide}{true}}
{
    \LoadClass[
        zihao=-4,
        UTF8,
        twoside,
        openright
    ]{ctexrep}
}
{
    \LoadClass[
        zihao=-4,
        UTF8
    ]{ctexrep}
}

\inputCommon{config/packages}

% undergraduate
\ifthenelse{\equal{\Type}{thesis}}
{
    \newcommand{\TitleTypeName}{郑州轻工业大学本科生毕业论文}
}
{
    \newcommand{\TitleTypeName}{郑州轻工业大学本科生毕业设计}
}

\inputCommon{config/path}
\inputCommon{config/commands}
\inputCommon{config/format/format}
