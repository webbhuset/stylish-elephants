module Element.Lazy exposing (lazy, lazy2, lazy3, lazy4, lazy5, lazy6, lazy7)

{-| Same as `Html.lazy`. In case you're unfamiliar, here's a note from the `Html` library!

    Since all Elm functions are pure we have a guarantee that the same input
    will always result in the same output. This module gives us tools to be lazy
    about building `Html` that utilize this fact.

    Rather than immediately applying functions to their arguments, the `lazy`
    functions just bundle the function and arguments up for later. When diffing
    the old and new virtual DOM, it checks to see if all the arguments are equal
    by reference. If so, it skips calling the function!

    This is a really cheap test and often makes things a lot faster, but definitely
    benchmark to be sure!

@docs lazy, lazy2, lazy3, lazy4, lazy5, lazy6, lazy7

_Note:_ For now only `lazy` that covers one argument can be provided. In `0.19` this will change!

-}

import Internal.Model exposing (..)
import VirtualDom


{-| -}
lazy : (a -> Element msg) -> a -> Element msg
lazy fn a =
    Unstyled <| VirtualDom.lazy2 (embed fn) a


{-| -}
lazy2 : (a -> b -> Element msg) -> a -> b -> Element msg
lazy2 fn a b =
   Unstyled <| VirtualDom.lazy3 (\a b -> embed (fn a) b) a b


{-| -}
lazy3 : (a -> b -> c -> Element msg) -> a -> b -> c -> Element msg
lazy3 fn a b c =
    Unstyled <| VirtualDom.lazy4 (\a b c -> embed (fn a b) c) a b c


{-| -}
lazy4 : (a -> b -> c -> d -> Element msg) -> a -> b -> c -> d -> Element msg
lazy4 fn a b c d =
    Unstyled <| VirtualDom.lazy5 (\a b c d -> embed (fn a b c) d) a b c d


{-| -}
lazy5 : (a -> b -> c -> d -> e -> Element msg) -> a -> b -> c -> d -> e -> Element msg
lazy5 fn a b c d e =
    Unstyled <| VirtualDom.lazy6 (\a b c d e -> embed (fn a b c d) e) a b c d e


{-| -}
lazy6 : (a -> b -> c -> d -> e -> f -> Element msg) -> a -> b -> c -> d -> e -> f -> Element msg
lazy6 fn a b c d e f =
    Unstyled <| VirtualDom.lazy7 (\a b c d e f -> embed (fn a b c d e) f) a b c d e f


{-| -}
lazy7 : (a -> b -> c -> d -> e -> f -> g -> Element msg) -> a -> b -> c -> d -> e -> f -> g -> Element msg
lazy7 fn a b c d e f g =
    Unstyled <| VirtualDom.lazy8 (\a b c d e f g -> embed (fn a b c d e f) g) a b c d e f g


-- {-| -}
-- lazy2 : (a -> b -> Element msg) -> a -> b -> Element msg
-- lazy2 fn a b =
--     Unstyled <| VirtualDom.lazy3 embed2 fn a b
