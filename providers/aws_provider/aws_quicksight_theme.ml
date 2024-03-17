(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_theme__configuration__data_color_palette = {
  colors: string   prop list option; [@option] (** colors *)
  empty_fill_color: string  prop option; [@option] (** empty_fill_color *)
  min_max_gradient: string   prop list option; [@option] (** min_max_gradient *)
} [@@deriving yojson_of]
(** aws_quicksight_theme__configuration__data_color_palette *)

type aws_quicksight_theme__configuration__sheet__tile__border = {
  show: bool  prop option; [@option] (** show *)
} [@@deriving yojson_of]
(** aws_quicksight_theme__configuration__sheet__tile__border *)

type aws_quicksight_theme__configuration__sheet__tile = {
  border: aws_quicksight_theme__configuration__sheet__tile__border list;
} [@@deriving yojson_of]
(** aws_quicksight_theme__configuration__sheet__tile *)

type aws_quicksight_theme__configuration__sheet__tile_layout__gutter = {
  show: bool  prop option; [@option] (** show *)
} [@@deriving yojson_of]
(** aws_quicksight_theme__configuration__sheet__tile_layout__gutter *)

type aws_quicksight_theme__configuration__sheet__tile_layout__margin = {
  show: bool  prop option; [@option] (** show *)
} [@@deriving yojson_of]
(** aws_quicksight_theme__configuration__sheet__tile_layout__margin *)

type aws_quicksight_theme__configuration__sheet__tile_layout = {
  gutter: aws_quicksight_theme__configuration__sheet__tile_layout__gutter list;
  margin: aws_quicksight_theme__configuration__sheet__tile_layout__margin list;
} [@@deriving yojson_of]
(** aws_quicksight_theme__configuration__sheet__tile_layout *)

type aws_quicksight_theme__configuration__sheet = {
  tile: aws_quicksight_theme__configuration__sheet__tile list;
  tile_layout: aws_quicksight_theme__configuration__sheet__tile_layout list;
} [@@deriving yojson_of]
(** aws_quicksight_theme__configuration__sheet *)

type aws_quicksight_theme__configuration__typography__font_families = {
  font_family: string  prop option; [@option] (** font_family *)
} [@@deriving yojson_of]
(** aws_quicksight_theme__configuration__typography__font_families *)

type aws_quicksight_theme__configuration__typography = {
  font_families: aws_quicksight_theme__configuration__typography__font_families list;
} [@@deriving yojson_of]
(** aws_quicksight_theme__configuration__typography *)

type aws_quicksight_theme__configuration__ui_color_palette = {
  accent: string  prop option; [@option] (** accent *)
  accent_foreground: string  prop option; [@option] (** accent_foreground *)
  danger: string  prop option; [@option] (** danger *)
  danger_foreground: string  prop option; [@option] (** danger_foreground *)
  dimension: string  prop option; [@option] (** dimension *)
  dimension_foreground: string  prop option; [@option] (** dimension_foreground *)
  measure: string  prop option; [@option] (** measure *)
  measure_foreground: string  prop option; [@option] (** measure_foreground *)
  primary_background: string  prop option; [@option] (** primary_background *)
  primary_foreground: string  prop option; [@option] (** primary_foreground *)
  secondary_background: string  prop option; [@option] (** secondary_background *)
  secondary_foreground: string  prop option; [@option] (** secondary_foreground *)
  success: string  prop option; [@option] (** success *)
  success_foreground: string  prop option; [@option] (** success_foreground *)
  warning: string  prop option; [@option] (** warning *)
  warning_foreground: string  prop option; [@option] (** warning_foreground *)
} [@@deriving yojson_of]
(** aws_quicksight_theme__configuration__ui_color_palette *)

type aws_quicksight_theme__configuration = {
  data_color_palette: aws_quicksight_theme__configuration__data_color_palette list;
  sheet: aws_quicksight_theme__configuration__sheet list;
  typography: aws_quicksight_theme__configuration__typography list;
  ui_color_palette: aws_quicksight_theme__configuration__ui_color_palette list;
} [@@deriving yojson_of]
(** aws_quicksight_theme__configuration *)

type aws_quicksight_theme__permissions = {
  actions: string  prop list;  (** actions *)
  principal: string prop;  (** principal *)
} [@@deriving yojson_of]
(** aws_quicksight_theme__permissions *)

type aws_quicksight_theme__timeouts = {
  create: string  prop option; [@option] (** create *)
  delete: string  prop option; [@option] (** delete *)
  update: string  prop option; [@option] (** update *)
} [@@deriving yojson_of]
(** aws_quicksight_theme__timeouts *)

type aws_quicksight_theme = {
  aws_account_id: string  prop option; [@option] (** aws_account_id *)
  base_theme_id: string prop;  (** base_theme_id *)
  id: string  prop option; [@option] (** id *)
  name: string prop;  (** name *)
  tags: (string * string   prop) list option; [@option] (** tags *)
  tags_all: (string * string   prop) list option; [@option] (** tags_all *)
  theme_id: string prop;  (** theme_id *)
  version_description: string  prop option; [@option] (** version_description *)
  configuration: aws_quicksight_theme__configuration list;
  permissions: aws_quicksight_theme__permissions list;
  timeouts: aws_quicksight_theme__timeouts option;
} [@@deriving yojson_of]
(** aws_quicksight_theme *)

type t = {
  arn: string prop;
  aws_account_id: string prop;
  base_theme_id: string prop;
  created_time: string prop;
  id: string prop;
  last_updated_time: string prop;
  name: string prop;
  status: string prop;
  tags: (string * string) list prop;
  tags_all: (string * string) list prop;
  theme_id: string prop;
  version_description: string prop;
  version_number: float prop;
}

let aws_quicksight_theme ?aws_account_id ?id ?tags ?tags_all ?version_description ?timeouts ~base_theme_id ~name ~theme_id ~configuration ~permissions __resource_id =
  let __resource_type = "aws_quicksight_theme" in
  let __resource = ({
    aws_account_id;
    base_theme_id;
    id;
    name;
    tags;
    tags_all;
    theme_id;
    version_description;
    configuration;
    permissions;
    timeouts;
  } : aws_quicksight_theme) in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_theme __resource);
  let __resource_attributes = ({
    arn = Prop.computed __resource_type __resource_id "arn";
    aws_account_id = Prop.computed __resource_type __resource_id "aws_account_id";
    base_theme_id = Prop.computed __resource_type __resource_id "base_theme_id";
    created_time = Prop.computed __resource_type __resource_id "created_time";
    id = Prop.computed __resource_type __resource_id "id";
    last_updated_time = Prop.computed __resource_type __resource_id "last_updated_time";
    name = Prop.computed __resource_type __resource_id "name";
    status = Prop.computed __resource_type __resource_id "status";
    tags = Prop.computed __resource_type __resource_id "tags";
    tags_all = Prop.computed __resource_type __resource_id "tags_all";
    theme_id = Prop.computed __resource_type __resource_id "theme_id";
    version_description = Prop.computed __resource_type __resource_id "version_description";
    version_number = Prop.computed __resource_type __resource_id "version_number";
  } : t) in
  __resource_attributes;;

