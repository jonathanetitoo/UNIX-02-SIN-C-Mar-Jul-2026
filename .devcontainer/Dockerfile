# ----------------------------------------------------------------------------
# SHELL: qué intérprete usar en los siguientes RUN
# ----------------------------------------------------------------------------
# Por defecto Docker usa /bin/sh. Lo dejamos explícitamente configurado
# para que todas las instrucciones RUN posteriores utilicen un shell POSIX.
SHELL ["/bin/sh", "-c"]


# ----------------------------------------------------------------------------
# WORKDIR: directorio de trabajo al entrar al contenedor
# ----------------------------------------------------------------------------
WORKDIR /workspaces

# Configuración de Git para el contenedor:
RUN git config --system --add safe.directory '*' \
 && git config --system init.defaultBranch main \
 && git config --system pull.rebase false \
 && git lfs install --system


# ----------------------------------------------------------------------------
# CMD: comando que se ejecuta por defecto al arrancar el contenedor
# ----------------------------------------------------------------------------
# Inicia una shell POSIX interactiva.
CMD ["/bin/sh"]
