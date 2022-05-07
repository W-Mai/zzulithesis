\newcommand{\inputCommon}[1]{\input{../../#1}}
\newcommand{\IfFileExistsCommon}[1]{\IfFileExists{../../#1}}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zzulithesis}
    [Zhejiang University Thesis and Design Template, Zixuan Wang zxwang42@gmail.com]
\inputCommon{config/version}
\wlog{zzulithesis version: \zzulithesisversion}

\RequirePackage{kvoptions}

\SetupKeyvalOptions{
    family=zzulithesis,
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
