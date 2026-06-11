# ============================================================================
# Dockerfile for the course environment
# ============================================================================
# Docker reads this file sequentially and executes each instruction to
# create an image. According to the container concepts introduced in
# Black Hat Bash, the image acts as a reusable template, while a container
# is a running instance created from that template (BHB Ch.3).
#
# Instructions are processed in order, so keeping related operations
# together improves organization and avoids unnecessary rebuild steps.
# Docker stores intermediate results as layers, which makes rebuilding
# faster when previous instructions remain unchanged.
# ============================================================================


# ----------------------------------------------------------------------------
# Base image used for the course environment
# ----------------------------------------------------------------------------
# Instead of creating a system from scratch, this image starts from
# Kali Linux Rolling. Kali provides many tools commonly used in
# networking and security labs, making the environment consistent
# across different systems. The base image becomes the foundation
# for all later instructions in this Dockerfile (BHB Ch.3).
FROM kalilinux/kali-rolling:latest


# ----------------------------------------------------------------------------
# Environment variables shared by programs running inside the container
# ----------------------------------------------------------------------------
# Environment variables provide settings that can be inherited by commands
# and processes launched from the shell. As explained in Bash fundamentals,
# programs can use these values to modify their behavior without changing
# the commands themselves (BHB Ch.1).
#
# DEBIAN_FRONTEND=noninteractive prevents package installation tools from
# stopping to request input while the image is being built.
#
# LANG and LC_ALL define the language and UTF-8 character encoding so that
# applications handle accented characters and other symbols correctly.
#
# TERM informs terminal-based applications about color capabilities and
# interactive features supported by the shell.
#
# The backslash "\" allows long instructions to be split across multiple
# lines, improving readability and maintenance.
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_ES.UTF-8 \
    LC_ALL=es_ES.UTF-8 \
    TERM=xterm-256color


# ----------------------------------------------------------------------------
# Preconfigure Wireshark installation to avoid interactive prompts
# ----------------------------------------------------------------------------
# Some packages ask questions during installation and wait for user input.
# Since image builds run automatically, interactive prompts would stop the
# process. This command sends a predefined answer to debconf so that the
# installation can continue without interruption.
#
# The pipe operator "|" redirects the output of echo to the input of
# debconf-set-selections. Similar to Bash pipelines, one command produces
# data and another command consumes it (BHB Ch.1).
#
# The value "false" disables packet capture permissions for non-root users.
# In this container, administrative tasks are performed as root, so no
# additional permissions are required.
RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \
    | debconf-set-selections


# ----------------------------------------------------------------------------
# Install the software required for the course environment
# ----------------------------------------------------------------------------
# This RUN instruction combines package updates and software installation
# into a single step. Docker processes instructions sequentially, and each
# RUN creates a new layer. Keeping related commands together reduces the
# number of layers and helps keep the image smaller and easier to rebuild
# (BHB Ch.3).
#
# apt-get update refreshes the local package database so the system knows
# which versions are currently available.
#
# apt-get install downloads and installs the selected packages.
#
# The -y option automatically answers "yes" to installation prompts,
# allowing the build to continue without manual interaction.
#
# The --no-install-recommends option installs only required packages,
# avoiding additional software that would increase image size.
#
# The && operator executes the next command only if the previous one
# succeeds. This prevents continuing with a partially failed setup and
# follows the command chaining concepts used in shell scripting (BHB Ch.1).
#
# Backslashes "\" split long commands into multiple lines, making them
# easier to read and maintain.
RUN apt-get update && apt-get install -y --no-install-recommends \
    \
        # === Text editors and command interpreters ===
    # Interactive shells and text editors are essential when working with
    # Bash scripts and command-line tools. Bash acts as the interface
    # between the user and the operating system, while editors such as
    # Vim and Neovim make it easier to create and modify scripts and
    # configuration files (BHB Ch.1).
    #
    # zsh provides an alternative shell with additional customization
    # features, and bash-completion improves usability by suggesting
    # commands and filenames while typing.
    neovim \
    vim \
    zsh \
    bash-completion \
    \
    # === Tools used throughout the course ===
    # Text processing utilities are a fundamental part of shell scripting.
    # grep searches for patterns, sed performs stream editing, and gawk
    # processes structured text. Together with make and perl, these tools
    # support automation and text manipulation tasks discussed in later
    # chapters (BHB Ch.2).
    perl \
    make \
    gawk \
    sed \
    grep \
    \
    # === Core UNIX utilities ===
    # These packages provide many of the standard commands used every day
    # in the shell. Tools from coreutils support file and text operations,
    # while findutils adds commands for locating files and combining them
    # with other programs. Process utilities make it possible to inspect
    # and manage running tasks, which is useful when debugging scripts
    # or monitoring applications (BHB Ch.1).
    #
    # less provides a convenient way to read long outputs, tree displays
    # directory structures in a hierarchical form, and jq simplifies the
    # processing of JSON data directly from the command line.
    coreutils \
    findutils \
    procps \
    less \
    tree \
    jq \
    \
    # === Manual pages and documentation ===
    # Manual pages are an important source of information when learning
    # shell commands. Commands such as man bash, man grep, and man sed
    # provide descriptions, options, and examples directly from the system.
    # Black Hat Bash emphasizes using built-in documentation to understand
    # command behavior instead of relying only on memorization (BHB Ch.1).
    #
    # These packages restore the documentation that is often removed from
    # minimal container images to reduce size.
    man-db \
    manpages \
    manpages-posix \
    \
        # === Network access and repository management tools ===
    # These utilities provide the ability to download files, interact with
    # remote repositories, and establish secure connections. Command-line
    # tools are frequently combined in Bash workflows to automate tasks
    # and exchange information between programs (BHB Ch.1).
    #
    # curl and wget retrieve data from remote servers, while git and
    # git-lfs are used to manage source code and large files. The
    # ca-certificates package allows applications to verify trusted
    # connections, and locales provides language definitions required
    # by the environment configuration used later in the image (BHB Ch.3).
    curl \
    wget \
    git \
    git-lfs \
    ca-certificates \
    locales \
    \
    # === Shell script analysis tools ===
    # ShellCheck examines Bash scripts and reports common mistakes before
    # execution. Using validation tools helps improve reliability and
    # makes scripts easier to maintain and debug.
    shellcheck \
    \
    # === Network discovery and scanning tools ===
    # Security and administration tasks often require gathering information
    # about hosts and services. Nmap is widely used to identify systems,
    # ports, and services available on a network, while Masscan is designed
    # for high-speed scanning of large address ranges. These tools support
    # the laboratory environment described in Black Hat Bash (BHB Ch.3).
    nmap \
    masscan \
    \
        # === Packet capture and traffic analysis tools ===
    # Understanding network communication often requires inspecting packets
    # exchanged between systems. tcpdump captures traffic directly from the
    # command line, while tshark provides many of the analysis features of
    # Wireshark in a terminal environment. These tools are useful for
    # observing protocols and troubleshooting network behavior (BHB Ch.3).
    tcpdump \
    tshark \
    \
    # === General network utilities ===
    # Command-line networking tools make it possible to test connectivity,
    # transfer data, and gather information about hosts and routes. They
    # complement shell workflows by allowing information produced by one
    # command to be combined with others through pipes and redirection
    # mechanisms (BHB Ch.1).
    netcat-traditional \
    socat \
    dnsutils \
    whois \
    traceroute \
    mtr-tiny \
    iproute2 \
    net-tools \
    iputils-ping \
    \
    # === Privacy and proxy tools ===
    # Some environments require traffic to be redirected through anonymizing
    # networks or intermediate proxies. Tor provides anonymous routing,
    # torsocks allows applications to use the Tor network, proxychains4
    # redirects traffic through proxy servers, and obfs4proxy helps disguise
    # traffic patterns. These tools support laboratory experiments and
    # network analysis tasks (BHB Ch.3).
    tor \
    torsocks \
    proxychains4 \
    obfs4proxy \
    \
    # === User-friendly HTTP client ===
    # HTTPie provides a more readable interface for sending HTTP requests
    # and inspecting responses. It simplifies interaction with web services
    # and complements traditional command-line utilities.
    httpie \
  # --- Enable Spanish locale support ---
 # The locale configuration file contains disabled entries marked with
 # the "#" character. The sed utility edits text streams and files, so
 # it is used here to enable the Spanish UTF-8 locale by removing the
 # comment character from the corresponding line. Text-processing tools
 # such as sed are a central part of shell scripting workflows (BHB Ch.2).
 #
 # locale-gen generates the files required by the operating system so
 # applications can display messages and special characters correctly.
 && sed -i 's/# es_ES.UTF-8/es_ES.UTF-8/' /etc/locale.gen \
 && locale-gen \
 \
 # --- Remove temporary package data to reduce image size ---
 # Package managers leave cached files that are no longer necessary after
 # installation. Cleaning them in the same RUN instruction prevents these
 # files from being stored in previous image layers, helping keep the
 # final container smaller and more efficient. Docker creates layers for
 # each instruction, so related tasks are grouped together whenever
 # possible (BHB Ch.3).
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# ----------------------------------------------------------------------------
# Define Bash as the interpreter for future RUN instructions
# ----------------------------------------------------------------------------
# Containers often use /bin/sh as the default shell, but Bash provides
# additional features that simplify scripting, including improved syntax
# and support for advanced constructs. Black Hat Bash focuses on Bash as
# the main interface between the user and the operating system, making it
# a natural choice for later commands and scripts (BHB Ch.1).
SHELL ["/bin/bash", "-c"]


# ----------------------------------------------------------------------------
# Set the default working directory inside the container
# ----------------------------------------------------------------------------
# Commands executed without an explicit path will start from this
# location. Setting a working directory keeps files organized and
# avoids repeatedly typing long paths. In development environments,
# repositories are mounted under /workspaces, so using this location
# makes source code easier to access and manage (BHB Ch.3).
WORKDIR /workspaces

# ----------------------------------------------------------------------------
# Configure Git settings for the container environment
# ----------------------------------------------------------------------------
# These settings apply to all repositories used inside the container.
# Marking repositories as safe prevents ownership warnings when files
# are mounted from external locations. Setting the default branch to
# "main" keeps new repositories consistent, while disabling rebase on
# pull uses merge behavior by default. Git LFS support is installed
# system-wide so repositories containing large files work correctly
# without additional configuration (BHB Ch.3).
RUN git config --system --add safe.directory '*' \
 && git config --system init.defaultBranch main \
 && git config --system pull.rebase false \
 && git lfs install --system

# ----------------------------------------------------------------------------
# Change the default shell used by the root account
# ----------------------------------------------------------------------------
# Bash and Zsh are command interpreters that provide access to the
# operating system. Zsh offers additional customization features and
# interactive improvements, making it convenient for everyday command-
# line work. Setting it as the default shell ensures that new sessions
# start with the same environment and user preferences (BHB Ch.1).
RUN chsh -s /usr/bin/zsh root


# ----------------------------------------------------------------------------
# Add custom settings to the Zsh configuration file
# ----------------------------------------------------------------------------
# A here-document allows multiple lines of text to be redirected to a file
# without creating temporary files. The text between EOF markers is sent
# to the standard input of the cat command, which appends it to .zshrc.
# This approach simplifies writing configuration files and demonstrates
# how shell redirection can automate repetitive tasks (BHB Ch.1).
#
# The PROMPT variable defines the appearance of the command prompt. It
# customizes colors, displays the current directory, and shows whether
# the previous command completed successfully. A consistent prompt makes
# interactive work easier and provides immediate feedback to the user.
RUN cat >> /root/.zshrc <<'EOF'
PROMPT='%F{cyan}[Jorge-Aguilar🐺]%f %F{yellow}%1~%f %(?.%F{green}ok.%F{red}mal %?)%f %# '
EOF


# ----------------------------------------------------------------------------
# Define the default command executed when the container starts
# ----------------------------------------------------------------------------
# RUN instructions are executed while the image is being built, whereas
# CMD specifies what should run when a container is launched. In this
# case, a Zsh session is started by default, providing an interactive
# shell ready for command-line work. Startup behavior can be overridden
# when running the container, making CMD a flexible default rather than
# a mandatory action (BHB Ch.3).
CMD ["/usr/bin/zsh"]