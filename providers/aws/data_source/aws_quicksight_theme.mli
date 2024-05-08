(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configuration__ui_color_palette = {
  accent : string prop;  (** accent *)
  accent_foreground : string prop;  (** accent_foreground *)
  danger : string prop;  (** danger *)
  danger_foreground : string prop;  (** danger_foreground *)
  dimension : string prop;  (** dimension *)
  dimension_foreground : string prop;  (** dimension_foreground *)
  measure : string prop;  (** measure *)
  measure_foreground : string prop;  (** measure_foreground *)
  primary_background : string prop;  (** primary_background *)
  primary_foreground : string prop;  (** primary_foreground *)
  secondary_background : string prop;  (** secondary_background *)
  secondary_foreground : string prop;  (** secondary_foreground *)
  success : string prop;  (** success *)
  success_foreground : string prop;  (** success_foreground *)
  warning : string prop;  (** warning *)
  warning_foreground : string prop;  (** warning_foreground *)
}

type configuration__typography__font_families = {
  font_family : string prop;  (** font_family *)
}

type configuration__typography = {
  font_families : configuration__typography__font_families list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** font_families *)
}

type configuration__sheet__tile_layout__margin = {
  show : bool prop;  (** show *)
}

type configuration__sheet__tile_layout__gutter = {
  show : bool prop;  (** show *)
}

type configuration__sheet__tile_layout = {
  gutter : configuration__sheet__tile_layout__gutter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** gutter *)
  margin : configuration__sheet__tile_layout__margin list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** margin *)
}

type configuration__sheet__tile__border = {
  show : bool prop;  (** show *)
}

type configuration__sheet__tile = {
  border : configuration__sheet__tile__border list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** border *)
}

type configuration__sheet = {
  tile : configuration__sheet__tile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tile *)
  tile_layout : configuration__sheet__tile_layout list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tile_layout *)
}

type configuration__data_color_palette = {
  colors : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** colors *)
  empty_fill_color : string prop;  (** empty_fill_color *)
  min_max_gradient : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** min_max_gradient *)
}

type configuration = {
  data_color_palette : configuration__data_color_palette list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** data_color_palette *)
  sheet : configuration__sheet list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** sheet *)
  typography : configuration__typography list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** typography *)
  ui_color_palette : configuration__ui_color_palette list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ui_color_palette *)
}

type permissions = {
  actions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** actions *)
  principal : string prop;  (** principal *)
}

type aws_quicksight_theme

val aws_quicksight_theme :
  ?aws_account_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  theme_id:string prop ->
  unit ->
  aws_quicksight_theme

val yojson_of_aws_quicksight_theme : aws_quicksight_theme -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  aws_account_id : string prop;
  base_theme_id : string prop;
  configuration : configuration list prop;
  created_time : string prop;
  id : string prop;
  last_updated_time : string prop;
  name : string prop;
  permissions : permissions list prop;
  status : string prop;
  tags : (string * string) list prop;
  theme_id : string prop;
  version_description : string prop;
  version_number : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?aws_account_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  theme_id:string prop ->
  string ->
  t

val make :
  ?aws_account_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  theme_id:string prop ->
  string ->
  t Tf_core.resource
