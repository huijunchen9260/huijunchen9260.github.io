<TeXmacs|2.1>

<style|generic>

<\body>
  <doc-data|<doc-title|Midterm Review>>

  <with|font-series|bold|Disclaimer: The questions in the midterm review may
  be similar but not necessary the same as what will appear in the midterm
  exam. Use the materials here with caution.>

  Similar to Lecture 08, slide 11 and 12 and Experiment 2 from Lecture 07,
  slide 13.

  Two difference:

  <\itemize-dot>
    <item>firm rent capital from consumer, and consumer are endowed with
    <math|2> unit of capital (<math|K<rsup|s>=2>)

    <item>consumer's utility function is <math|U<around*|(|C,l|)>=<frac|C<rsup|1-b>|1-b>+<frac|l<rsup|1-d>|1-d>>
  </itemize-dot>

  <section|GE with capital endowment>

  The competitive equilibrium given a set of exogenous variables
  <math|<around*|{|G,z,K<rsup|s>|}>>, is a set of allocations
  <math|<around*|{|Y<rsup|\<ast\>>,C<rsup|\<ast\>>,l<rsup|\<ast\>>,N<rsup|s\<ast\>>,N<rsup|d\<ast\>>,\<pi\><rsup|\<ast\>>,T<rsup|\<ast\>><rsup|*>,K<rsup|d\<ast\>>|}>>
  and prices <math|<around*|{|w<rsup|\<ast\>>,r<rsup|\<ast\>>|}>> such that

  <\enumerate-numeric>
    <item>Taken prices and __ as given, consumers solves\ 

    <\equation>
      max<rsub|C,l><frac|C<rsup|1-b>|1-b>+<frac|l<rsup|1-d>|1-d>
    </equation>

    subject to

    <\equation>
      C\<leqslant\>w<around*|(|h-l|)>+r K<rsup|s>+\<pi\>-T
    </equation>

    <item>Taken prices and __ as given, firm solves

    <\equation>
      max<rsub|K<rsup|d>,N<rsup|d>>z <around*|(|K<rsup|d>|)><rsup|a>
      <around*|(|N<rsup|d>|)><rsup|1-a>-w N<rsup|d>-r K<rsup|d>
    </equation>

    <item>Government budget balance,\ 

    <\equation>
      T<rsup|\<ast\>>=G
    </equation>

    <item>The equilibrium wage <math|w<rsup|\<ast\>>> will clear the labor
    market:

    <\equation>
      N<rsup|s>=N<rsup|d>
    </equation>

    <item>The equilibrium rent <math|r<rsup|\<ast\>>> will clear the capital
    market clear:

    <\equation>
      K<rsup|s>=K<rsup|d>
    </equation>
  </enumerate-numeric>

  \;

  Questions are

  <\enumerate>
    <item><math|w=MPN=<around*|(|1-a|)> z
    <around*|(|K<rsup|d>|)><rsup|a><around*|(|N<rsup|d>|)><rsup|-a>>

    <\enumerate>
      <item><math|max<rsub|K<rsup|d>,N<rsup|d>>z
      <around*|(|K<rsup|d>|)><rsup|a> <around*|(|N<rsup|d>|)><rsup|1-a>-w
      N<rsup|d>-r K<rsup|d>>

      FOC=<math|<frac|\<partial\><around*|(|z <around*|(|K<rsup|d>|)><rsup|a>
      <around*|(|N<rsup|d>|)><rsup|1-a>-w N<rsup|d>|)>|\<partial\>
      N<rsup|d>>=0\<Rightarrow\><around*|(|1-a|)> z
      <around*|(|K<rsup|d>|)><rsup|a><around*|(|N<rsup|d>|)><rsup|-a>-w=0\<Rightarrow\><around*|(|1-a|)>
      z <around*|(|K<rsup|d>|)><rsup|a><around*|(|N<rsup|d>|)><rsup|-a>=w>
    </enumerate>

    <item><math|r=MPK=z<around*|(|N<rsup|d>|)><rsup|1-a> a
    <around*|(|K<rsup|d>|)><rsup|a-1>>

    <math|<frac|\<partial\> z <around*|(|K<rsup|d>|)><rsup|a>
    <around*|(|N<rsup|d>|)><rsup|1-a>|\<partial\> K<rsup|d>>=a
    z<around*|(|N<rsup|d>|)><rsup|1-a><around*|(|K<rsup|d>|)><rsup|a-1> >

    <item>Social planner's problem is

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|max<rsub|C,l>>|<cell|<frac|C<rsup|1-b>|1-b>+<frac|l<rsup|1-d>|1-d>>>|<row|<cell|s.t.>|<cell|>|<cell|C=Y-G>>|<row|<cell|>|<cell|>|<cell|Y=z
      K<rsup|a> N<rsup|1-a>>>|<row|<cell|>|<cell|>|<cell|N=1-l>>|<row|<cell|>|<cell|>|<cell|K=2>>>>
    </eqnarray*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|max<rsub|l>>|<cell|<frac|<around*|(|z
      K<rsup|a> <around*|(|1-l|)><rsup|1-a>-G|)><rsup|1-b>|1-b>+<frac|l<rsup|1-d>|1-d>>>|<row|<cell|s.t.>|<cell|>|<cell|K=2>>>>
    </eqnarray*>

    <math|<frac|<around*|(|z K<rsup|a> <around*|(|1-l|)><rsup|1-a>-G|)><rsup|1-b>|1-b>\<Rightarrow\><around*|(|1-b|)>
    <frac|<around*|(|z K<rsup|a> <around*|(|1-l|)><rsup|1-a>-G|)><rsup|1-b-1>|1-b>\<Rightarrow\><around*|(|z
    K<rsup|a> <around*|(|1-l|)><rsup|1-a>-G|)><rsup|-b>>

    <math|z K<rsup|a> <around*|(|1-l|)><rsup|1-a>\<Rightarrow\><around*|(|1-a|)>z
    K<rsup|a> <around*|(|1-l|)><rsup|1-a-1>\<Rightarrow\>z<around*|(|K<rsup|a>|)>
    <around*|(|<around*|(|1-l|)><rsup|-a>|)>>

    <math|<around*|(|1-l|)>\<Rightarrow\>-1>

    <\equation>
      l<rsup|-d>-z<around*|(|K<rsup|a>|)>
      <around*|(|<around*|(|1-l|)><rsup|-a>|)><around*|(|<around*|(|z
      <around*|(|K<rsup|a>|)> <around*|(|1-l|)><rsup|1-a>-G|)>|)><rsup|-b>
      <around*|(|1-a|)>=0
    </equation>

    <item>Solve for <math|l> get\ 

    <\equation>
      l<rsup|-d>=z<around*|(|K<rsup|a>|)>
      <around*|(|<around*|(|1-l|)><rsup|-a>|)><around*|(|<around*|(|z
      <around*|(|K<rsup|a>|)> <around*|(|1-l|)><rsup|1-a>-G|)>|)><rsup|-b>
      <around*|(|1-a|)>
    </equation>

    <math|l<rsup|-d>=z K<rsup|a><around*|(|1-l|)><rsup|-a> z<rsup|-b>
    K<rsup|-a b> <around*|(|1-l|)><rsup|-b
    <around*|(|1-a|)>><around*|(|1-a|)>>

    <math|<frac|l<rsup|-d>|<around*|(|1-l|)><rsup|-a-b
    <around*|(|1-a|)>>>=<around*|(|1-a|)> z<rsup|1-b> K<rsup|a-a b>>

    <item><math|z=1,G=0,a=<frac|1|2>,b=2,d=<frac|3|2>,> what is
    <math|l,N,w,r>?
  </enumerate>

  <section|Labor tax>

  Similar to Lecture 11 but with two difference:

  <\enumerate>
    <item>Cobb-Douglas production function: <math|Y=z N<rsup|a>>

    <item>Hansen (1985) utility function: <math|U<around*|(|C,N|)>=ln C-b N>
  </enumerate>

  So we can start to solve this model by

  <\enumerate>
    <item><math|D<rsub|C> U<around*|(|C,N|)>=<frac|1|C>>

    <item><math|D<rsub|N> U<around*|(|C,N|)>=-b>

    <item><math|MRS<rsub|N,C>=<frac|D<rsub|N>U|D<rsub|C>U>=-<frac|b|1/C>=-b
    C>

    <math|N=1-l\<Rightarrow\>MRS<rsub|l,C>=-MRS<rsub|N,C>=b C>

    <item><math|MRS<rsub|N,C>=>After-tax wage rate<math|=w<around*|(|1-t|)>>

    <item><math|w=MPN=a z N<rsup|a-1>\<Rightarrow\>w N=a z N<rsup|a>>

    <item><math|\<pi\>=Y-w N=z N<rsup|a>-a z N<rsup|a>=<around*|(|1-a|)> z
    N<rsup|a>>

    <item><math|MRS<rsub|l,C>=-MRS<rsub|N,C>=b
    C=w<around*|(|1-t|)>=>After-tax wage

    <math|C=w<around*|(|1-t|)> N+\<pi\>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|b C>|<cell|=>|<cell|w<around*|(|1-t|)>>>|<row|<cell|b<around*|[|w<around*|(|1-t|)>
      N+\<pi\>|]>>|<cell|=>|<cell|w<around*|(|1-t|)>>>|<row|<cell|b<around*|[|a
      z N<rsup|a><around*|(|1-t|)>+<around*|(|1-a|)> z
      N<rsup|a>|]>>|<cell|=>|<cell|a z N<rsup|a-1><around*|(|1-t|)>>>|<row|<cell|z
      N<rsup|a> b<around*|[|a<around*|(|1-t|)>+<around*|(|1-a|)>
      |]>>|<cell|=>|<cell|a z N<rsup|a-1><around*|(|1-t|)>>>|<row|<cell|N
      b<around*|[|a<around*|(|1-t|)>+<around*|(|1-a|)>
      |]>>|<cell|=>|<cell|a<around*|(|1-t|)>>>|<row|<cell|N>|<cell|=>|<cell|<frac|a<around*|(|1-t|)>|b<around*|[|a<around*|(|1-t|)>+<around*|(|1-a|)>
      |]>>>>>>
    </eqnarray*>

    <item><math|w<around*|(|t|)>=a z N<rsup|a-1>=a z
    <around*|(|<frac|a<around*|(|1-t|)>|b<around*|[|a<around*|(|1-t|)>+<around*|(|1-a|)>
    |]>>|)><rsup|a-1>>

    <item><math|G=w<around*|(|t|)> t N<around*|(|t|)>=a z
    <around*|(|<frac|a<around*|(|1-t|)>|b<around*|[|a<around*|(|1-t|)>+<around*|(|1-a|)>
    |]>>|)><rsup|a-1> t <frac|a<around*|(|1-t|)>|b<around*|[|a<around*|(|1-t|)>+<around*|(|1-a|)>
    |]>>>

    <item>if <math|t=0.5,a=0.33,b=2.15>, <math|G=w t N=0.0751>

    <item>Another <math|t> that generates the same <math|G> is

    <item>Want to maximize <math|G>, the optimal <math|t=>

    <item>optimal tax revenue <math|G=>
  </enumerate>

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>GE
      with capital endowment> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Labor
      tax> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>