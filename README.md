# VUI

V UI ou VUI é um projeto open source de design system que utiliza conceitos de design tokens aplicados em SwiftUI. O objetivo é trazer uma estrutura básica customizável que possa ser utilizada na criação de interfaces em SwiftUI, de forma prática e contribuindo para a padronização do projeto.

[![GitHub license](https://img.shields.io/github/license/victorpereiradepaula/vui)](https://github.com/victorpereiradepaula/vui/blob/master/LICENSE)
[![Xcode 15.4+](https://img.shields.io/badge/Xcode-15.4%2B-blue.svg)](https://developer.apple.com/documentation/Xcode-Release-Notes/xcode-15_4-release-notes)
[![Swift 5.1+](https://img.shields.io/badge/Swift-5.1%2B-orange.svg)](https://github.com/apple/swift/releases/tag/swift-5.10-RELEASE)
[![iOS 13+](https://img.shields.io/badge/iOS-13%2B-purple)](https://support.apple.com/pt-br/118392)

## Índice

1. [Funcionalidades](#funcionalidades)
1. [Exemplos](#exemplos)
1. [Referências](#referências)

## Funcionalidades

- [ ] Gerenciador
    - [x] [Configuração de tokens globais](#configuração-de-tokens-globais)
    - [x] [Controle UIUserInterfaceStyle da aplicação](#configuração-do-uiuserinterfacestyle-da-aplicação)
- [ ] Design tokens
    - [x] [Cor](#tokens-de-cor)
    - [x] [Espaçamento](#tokens-de-espaçamento)
    - [ ] [Forma](#tokens-de-forma)
    - [ ] [Elevação](#tokens-de-elevação)

## Guia de uso

Adicone a VUI ao seu projeto via Swift Package Manager, então importe a bibliotecaa `import VUI` nos arquivos que for utilizar.

### Configuração de tokens globais

Todas as configurações relacionadas à VUI são feitas a partir do singleton `VUITokensManager`, que tem a única instância compartilhada pela constante estática `shared`.

Use o método `configure` atribuindo os objetos que implementam os protocolos dos tokens que deseja sobrescrever.

- Exemplo:

    ```swift
    struct TestDarkColorTokens: ColorTokens {
        var surfaceContainerLowest: Color { .init(white: 0) }
    }

    struct TestColorTokens: ColorTokens {
        var primary: Color { .purple }
        var secondary: Color { .red }
        var tertiary: Color { .green }
    }

    VUITokensManager.shared.configure(colorTokens: TestColorTokens(), darkColorTokens: TestDarkColorTokens())
    ```

> :warning: É importante informar que todos os protocolos de tokens possuem valores default, então quaisquer variáveeis não sobrescrita nos objetos que implementam os protocolos usarão os valores default.

### Configuração do UIUserInterfaceStyle da aplicação

É possível verificar se há um estilo atribuído para o usuário pela variável calculada `userInterfaceStyle` que retorna um UIUserInterfaceStyle de valor default `unspecified`.

> :warning: Quando o style estiver como `unspecified`, serão usados os esquemas de cores do aparelho.

- Exemplo:

    ```swift
    print(VUITokensManager.shared.userInterfaceStyle)
    ```

Para mudar o UIUserInterfaceStyle utilize o método `setUserInterfaceStyle`.

- Exemplo:

    ```swift
    VUITokensManager.shared.setUserInterfaceStyle(newValue)
    ```

### Tokens de cor

Uma vez configurados, basta utilizar da mesma forma como utilizamos as cores do sistema.

- Exemplo:
    ```swift
    Text("Olá mundo!")
        .foregroundColor(.primary)
        .background(Color.primaryContainer)
    ```

### Tokens de espaçamento

- Exemplo:
    ```swift
    Text("Olá mundo!")
        .padding(.medium)
    ```

### Tokens de forma

### Tokens de Elevação

## Referências

[Material design - color roles](https://m3.material.io/styles/color/roles)
