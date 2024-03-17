(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_quicksight_theme__configuration__data_color_palette

type aws_quicksight_theme__configuration__sheet__tile__border

type aws_quicksight_theme__configuration__sheet__tile

type aws_quicksight_theme__configuration__sheet__tile_layout__gutter

type aws_quicksight_theme__configuration__sheet__tile_layout__margin

type aws_quicksight_theme__configuration__sheet__tile_layout

type aws_quicksight_theme__configuration__sheet

type aws_quicksight_theme__configuration__typography__font_families

type aws_quicksight_theme__configuration__typography

type aws_quicksight_theme__configuration__ui_color_palette

type aws_quicksight_theme__configuration

type aws_quicksight_theme__permissions

type aws_quicksight_theme__timeouts

type aws_quicksight_theme

val aws_quicksight_theme :
    ?aws_account_id:string prop ->
    ?id:string prop ->
    ?tags:(string * string prop) list ->
    ?tags_all:(string * string prop) list ->
    ?version_description:string prop ->
    ?timeouts:aws_quicksight_theme__timeouts ->
    base_theme_id:string prop ->
    name:string prop ->
    theme_id:string prop ->
    configuration:aws_quicksight_theme__configuration list ->
    permissions:aws_quicksight_theme__permissions list ->
    string ->
    unit

