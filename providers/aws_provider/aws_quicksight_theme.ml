(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_quicksight_theme__configuration__data_color_palette = {
  colors : string list option; [@option]  (** colors *)
  empty_fill_color : string option; [@option]
      (** empty_fill_color *)
  min_max_gradient : string list option; [@option]
      (** min_max_gradient *)
}
[@@deriving yojson_of]
(** aws_quicksight_theme__configuration__data_color_palette *)

type aws_quicksight_theme__configuration__sheet__tile__border = {
  show : bool option; [@option]  (** show *)
}
[@@deriving yojson_of]
(** aws_quicksight_theme__configuration__sheet__tile__border *)

type aws_quicksight_theme__configuration__sheet__tile = {
  border :
    aws_quicksight_theme__configuration__sheet__tile__border list;
}
[@@deriving yojson_of]
(** aws_quicksight_theme__configuration__sheet__tile *)

type aws_quicksight_theme__configuration__sheet__tile_layout__gutter = {
  show : bool option; [@option]  (** show *)
}
[@@deriving yojson_of]
(** aws_quicksight_theme__configuration__sheet__tile_layout__gutter *)

type aws_quicksight_theme__configuration__sheet__tile_layout__margin = {
  show : bool option; [@option]  (** show *)
}
[@@deriving yojson_of]
(** aws_quicksight_theme__configuration__sheet__tile_layout__margin *)

type aws_quicksight_theme__configuration__sheet__tile_layout = {
  gutter :
    aws_quicksight_theme__configuration__sheet__tile_layout__gutter
    list;
  margin :
    aws_quicksight_theme__configuration__sheet__tile_layout__margin
    list;
}
[@@deriving yojson_of]
(** aws_quicksight_theme__configuration__sheet__tile_layout *)

type aws_quicksight_theme__configuration__sheet = {
  tile : aws_quicksight_theme__configuration__sheet__tile list;
  tile_layout :
    aws_quicksight_theme__configuration__sheet__tile_layout list;
}
[@@deriving yojson_of]
(** aws_quicksight_theme__configuration__sheet *)

type aws_quicksight_theme__configuration__typography__font_families = {
  font_family : string option; [@option]  (** font_family *)
}
[@@deriving yojson_of]
(** aws_quicksight_theme__configuration__typography__font_families *)

type aws_quicksight_theme__configuration__typography = {
  font_families :
    aws_quicksight_theme__configuration__typography__font_families
    list;
}
[@@deriving yojson_of]
(** aws_quicksight_theme__configuration__typography *)

type aws_quicksight_theme__configuration__ui_color_palette = {
  accent : string option; [@option]  (** accent *)
  accent_foreground : string option; [@option]
      (** accent_foreground *)
  danger : string option; [@option]  (** danger *)
  danger_foreground : string option; [@option]
      (** danger_foreground *)
  dimension : string option; [@option]  (** dimension *)
  dimension_foreground : string option; [@option]
      (** dimension_foreground *)
  measure : string option; [@option]  (** measure *)
  measure_foreground : string option; [@option]
      (** measure_foreground *)
  primary_background : string option; [@option]
      (** primary_background *)
  primary_foreground : string option; [@option]
      (** primary_foreground *)
  secondary_background : string option; [@option]
      (** secondary_background *)
  secondary_foreground : string option; [@option]
      (** secondary_foreground *)
  success : string option; [@option]  (** success *)
  success_foreground : string option; [@option]
      (** success_foreground *)
  warning : string option; [@option]  (** warning *)
  warning_foreground : string option; [@option]
      (** warning_foreground *)
}
[@@deriving yojson_of]
(** aws_quicksight_theme__configuration__ui_color_palette *)

type aws_quicksight_theme__configuration = {
  data_color_palette :
    aws_quicksight_theme__configuration__data_color_palette list;
  sheet : aws_quicksight_theme__configuration__sheet list;
  typography : aws_quicksight_theme__configuration__typography list;
  ui_color_palette :
    aws_quicksight_theme__configuration__ui_color_palette list;
}
[@@deriving yojson_of]
(** aws_quicksight_theme__configuration *)

type aws_quicksight_theme__permissions = {
  actions : string list;  (** actions *)
  principal : string;  (** principal *)
}
[@@deriving yojson_of]
(** aws_quicksight_theme__permissions *)

type aws_quicksight_theme__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_quicksight_theme__timeouts *)

type aws_quicksight_theme = {
  base_theme_id : string;  (** base_theme_id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  theme_id : string;  (** theme_id *)
  version_description : string option; [@option]
      (** version_description *)
  configuration : aws_quicksight_theme__configuration list;
  permissions : aws_quicksight_theme__permissions list;
  timeouts : aws_quicksight_theme__timeouts option;
}
[@@deriving yojson_of]
(** aws_quicksight_theme *)

let aws_quicksight_theme ?tags ?version_description ?timeouts
    ~base_theme_id ~name ~theme_id ~configuration ~permissions
    __resource_id =
  let __resource_type = "aws_quicksight_theme" in
  let __resource =
    {
      base_theme_id;
      name;
      tags;
      theme_id;
      version_description;
      configuration;
      permissions;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_theme __resource);
  ()
