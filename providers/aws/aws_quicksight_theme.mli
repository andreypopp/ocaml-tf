

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configuration__data_color_palette

val configuration__data_color_palette :
    ?colors:string  prop list ->
    ?empty_fill_color:string prop ->
    ?min_max_gradient:string  prop list ->
    unit ->
    configuration__data_color_palette

type configuration__sheet__tile__border

val configuration__sheet__tile__border :
    ?show:bool prop ->
    unit ->
    configuration__sheet__tile__border

type configuration__sheet__tile

val configuration__sheet__tile :
    ?border:configuration__sheet__tile__border list ->
    unit ->
    configuration__sheet__tile

type configuration__sheet__tile_layout__gutter

val configuration__sheet__tile_layout__gutter :
    ?show:bool prop ->
    unit ->
    configuration__sheet__tile_layout__gutter

type configuration__sheet__tile_layout__margin

val configuration__sheet__tile_layout__margin :
    ?show:bool prop ->
    unit ->
    configuration__sheet__tile_layout__margin

type configuration__sheet__tile_layout

val configuration__sheet__tile_layout :
    ?gutter:configuration__sheet__tile_layout__gutter list ->
    ?margin:configuration__sheet__tile_layout__margin list ->
    unit ->
    configuration__sheet__tile_layout

type configuration__sheet

val configuration__sheet :
    ?tile:configuration__sheet__tile list ->
    ?tile_layout:configuration__sheet__tile_layout list ->
    unit ->
    configuration__sheet

type configuration__typography__font_families

val configuration__typography__font_families :
    ?font_family:string prop ->
    unit ->
    configuration__typography__font_families

type configuration__typography

val configuration__typography :
    ?font_families:configuration__typography__font_families list ->
    unit ->
    configuration__typography

type configuration__ui_color_palette

val configuration__ui_color_palette :
    ?accent:string prop ->
    ?accent_foreground:string prop ->
    ?danger:string prop ->
    ?danger_foreground:string prop ->
    ?dimension:string prop ->
    ?dimension_foreground:string prop ->
    ?measure:string prop ->
    ?measure_foreground:string prop ->
    ?primary_background:string prop ->
    ?primary_foreground:string prop ->
    ?secondary_background:string prop ->
    ?secondary_foreground:string prop ->
    ?success:string prop ->
    ?success_foreground:string prop ->
    ?warning:string prop ->
    ?warning_foreground:string prop ->
    unit ->
    configuration__ui_color_palette

type configuration

val configuration :
    ?data_color_palette:configuration__data_color_palette list ->
    ?sheet:configuration__sheet list ->
    ?typography:configuration__typography list ->
    ?ui_color_palette:configuration__ui_color_palette list ->
    unit ->
    configuration

type permissions

val permissions :
    actions:string  prop list ->
    principal:string prop ->
    unit ->
    permissions

type timeouts

val timeouts :
    ?create:string prop ->
    ?delete:string prop ->
    ?update:string prop ->
    unit ->
    timeouts

type aws_quicksight_theme

val aws_quicksight_theme :
    ?aws_account_id:string prop ->
    ?id:string prop ->
    ?tags:string  prop Tf_core.assoc ->
    ?tags_all:string  prop Tf_core.assoc ->
    ?version_description:string prop ->
    ?configuration:configuration list ->
    ?permissions:permissions list ->
    ?timeouts:timeouts ->
    base_theme_id:string prop ->
    name:string prop ->
    theme_id:string prop ->
    unit ->
    aws_quicksight_theme

val yojson_of_aws_quicksight_theme : aws_quicksight_theme -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name: string;
  arn: string prop;
  aws_account_id: string prop;
  base_theme_id: string prop;
  created_time: string prop;
  id: string prop;
  last_updated_time: string prop;
  name: string prop;
  status: string prop;
  tags: string Tf_core.assoc prop;
  tags_all: string Tf_core.assoc prop;
  theme_id: string prop;
  version_description: string prop;
  version_number: float prop;
}

val register :
    ?tf_module:tf_module ->
    ?aws_account_id:string prop ->
    ?id:string prop ->
    ?tags:string  prop Tf_core.assoc ->
    ?tags_all:string  prop Tf_core.assoc ->
    ?version_description:string prop ->
    ?configuration:configuration list ->
    ?permissions:permissions list ->
    ?timeouts:timeouts ->
    base_theme_id:string prop ->
    name:string prop ->
    theme_id:string prop ->
    string ->
    t

val make :
    ?aws_account_id:string prop ->
    ?id:string prop ->
    ?tags:string  prop Tf_core.assoc ->
    ?tags_all:string  prop Tf_core.assoc ->
    ?version_description:string prop ->
    ?configuration:configuration list ->
    ?permissions:permissions list ->
    ?timeouts:timeouts ->
    base_theme_id:string prop ->
    name:string prop ->
    theme_id:string prop ->
    string ->
    t Tf_core.resource

