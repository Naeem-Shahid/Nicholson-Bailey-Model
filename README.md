# Nicholson-Bailey-Model

***
This model illustrates the discrete time dynamics of host-parasite interaction.

## Without dispersion

$$
\begin{eqnarray}
h(t+1) &=&  R h(t) e^{-a p(t)}, \quad host \\
p(t+1) &=& c h(t) \left[1 - e^{-a p(t)}\right], \quad  parasitoid \\
\end{eqnarray}
$$

where:

- $h$ and $p$ = Densities of the host and parasitoid population.
- $R$ = Offspring of survivied host. 
- $a$ = Proportionality constant in the probability to escape parasites.
- $c$ = Number of parasitoids hatched from an infected host.

![Nicholson-Bailey-no](https://user-images.githubusercontent.com/100057270/180852413-05cfbd23-2857-4383-b70a-f2e49bf520af.png)

## With dispersion

Adding diffusion into neighbors with rates $r_h$ and $r_p$. 

All $h$'s and $p$'s carry indices $i,j$.
$$
\begin{eqnarray}
h(t+1) &=&  R \tilde{h}(t) e^{-a \tilde{p}(t)}, \\
p(t+1) &=& c \tilde{h}(t) \left[1 - e^{-a \tilde{p}(t)}\right],
\end{eqnarray}
$$
where,

$$
\begin{eqnarray}
\tilde{h}(t) &=& (1 - r_h) h(t) + r_h/8 \sum_{\rm{neighbors}} h(t), \\
\tilde{p}(t) &=& (1 - r_p) p(t) + r_p/8 \sum_{\rm{neighbors}} h(t),
\end{eqnarray}
$$

![Nicholson-Bailey](https://user-images.githubusercontent.com/100057270/180852562-44d3e600-cd88-4e51-8903-57975fd9868f.png)

***

