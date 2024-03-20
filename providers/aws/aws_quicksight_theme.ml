(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__data_color_palette = {
  colors: string   prop list option; [@option] (** colors *)
  empty_fill_color: string  prop option; [@option] (** empty_fill_color *)
  min_max_gradient: string   prop list option; [@option] (** min_max_gradient *)
} [@@deriving yojson_of]
(** configuration__data_color_palette *)

type configuration__sheet__tile__border = {
  show: bool  prop option; [@option] (** show *)
} [@@deriving yojson_of]
(** configuration__sheet__tile__border *)

type configuration__sheet__tile = {
  border: configuration__sheet__tile__border list;
} [@@deriving yojson_of]
(** configuration__sheet__tile *)

type configuration__sheet__tile_layout__gutter = {
  show: bool  prop option; [@option] (** show *)
} [@@deriving yojson_of]
(** configuration__sheet__tile_layout__gutter *)

type configuration__sheet__tile_layout__margin = {
  show: bool  prop option; [@option] (** show *)
} [@@deriving yojson_of]
(** configuration__sheet__tile_layout__margin *)

type configuration__sheet__tile_layout = {
  gutter: configuration__sheet__tile_layout__gutter list;
  margin: configuration__sheet__tile_layout__margin list;
} [@@deriving yojson_of]
(** configuration__sheet__tile_layout *)

type configuration__sheet = {
  tile: configuration__sheet__tile list;
  tile_layout: configuration__sheet__tile_layout list;
} [@@deriving yojson_of]
(** configuration__sheet *)

type configuration__typography__font_families = {
  font_family: string  prop option; [@option] (** font_family *)
} [@@deriving yojson_of]
(** configuration__typography__font_families *)

type configuration__typography = {
  font_families: configuration__typography__font_families list;
} [@@deriving yojson_of]
(** configuration__typography *)

type configuration__ui_color_palette = {
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
(** configuration__ui_color_palette *)

type configuration = {
  data_color_palette: configuration__data_color_palette list;
  sheet: configuration__sheet list;
  typography: configuration__typography list;
  ui_color_palette: configuration__ui_color_palette list;
} [@@deriving yojson_of]
(** configuration *)

type permissions = {
  actions: string  prop list;  (** actions *)
  principal: string prop;  (** principal *)
} [@@deriving yojson_of]
(** permissions *)

type timeouts = {
  create: string  prop option; [@option] (** create *)
  delete: string  prop option; [@option] (** delete *)
  update: string  prop option; [@option] (** update *)
} [@@deriving yojson_of]
(** timeouts *)

type aws_quicksight_theme = {
  aws_account_id: string  prop option; [@option] (** aws_account_id *)
  base_theme_id: string prop;  (** base_theme_id *)
  id: string  prop option; [@option] (** id *)
  name: string prop;  (** name *)
  tags: (string * string   prop) list option; [@option] (** tags *)
  tags_all: (string * string   prop) list option; [@option] (** tags_all *)
  theme_id: string prop;  (** theme_id *)
  version_description: string  prop option; [@option] (** version_description *)
  configuration: configuration list;
  permissions: permissions list;
  timeouts: timeouts option;
} [@@deriving yojson_of]
(** aws_quicksight_theme *)

let configuration__data_color_palette ?colors ?empty_fill_color ?min_max_gradient () =
  ({
    colors;
    empty_fill_color;
    min_max_gradient;
  } : configuration__data_color_palette);;

let configuration__sheet__tile__border ?show () =
  ({
    show;
  } : configuration__sheet__tile__border);;

let configuration__sheet__tile ~border () =
  ({
    border;
  } : configuration__sheet__tile);;

let configuration__sheet__tile_layout__gutter ?show () =
  ({
    show;
  } : configuration__sheet__tile_layout__gutter);;

let configuration__sheet__tile_layout__margin ?show () =
  ({
    show;
  } : configuration__sheet__tile_layout__margin);;

let configuration__sheet__tile_layout ~gutter ~margin () =
  ({
    gutter;
    margin;
  } : configuration__sheet__tile_layout);;

let configuration__sheet ~tile ~tile_layout () =
  ({
    tile;
    tile_layout;
  } : configuration__sheet);;

let configuration__typography__font_families ?font_family () =
  ({
    font_family;
  } : configuration__typography__font_families);;

let configuration__typography ~font_families () =
  ({
    font_families;
  } : configuration__typography);;

let configuration__ui_color_palette ?accent ?accent_foreground ?danger ?danger_foreground ?dimension ?dimension_foreground ?measure ?measure_foreground ?primary_background ?primary_foreground ?secondary_background ?secondary_foreground ?success ?success_foreground ?warning ?warning_foreground () =
  ({
    accent;
    accent_foreground;
    danger;
    danger_foreground;
    dimension;
    dimension_foreground;
    measure;
    measure_foreground;
    primary_background;
    primary_foreground;
    secondary_background;
    secondary_foreground;
    success;
    success_foreground;
    warning;
    warning_foreground;
  } : configuration__ui_color_palette);;

let configuration ~data_color_palette ~sheet ~typography ~ui_color_palette () =
  ({
    data_color_palette;
    sheet;
    typography;
    ui_color_palette;
  } : configuration);;

let permissions ~actions ~principal () =
  ({
    actions;
    principal;
  } : permissions);;

let timeouts ?create ?delete ?update () =
  ({
    create;
    delete;
    update;
  } : timeouts);;

let aws_quicksight_theme ?aws_account_id ?id ?tags ?tags_all ?version_description ?timeouts ~base_theme_id ~name ~theme_id ~configuration ~permissions () =
  ({
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
  } : aws_quicksight_theme);;

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

let make ?aws_account_id ?id ?tags ?tags_all ?version_description ?timeouts ~base_theme_id ~name ~theme_id ~configuration ~permissions __id =
  let __type = "aws_quicksight_theme" in
  let __attrs = ({
    arn = Prop.computed __type __id "arn";
    aws_account_id = Prop.computed __type __id "aws_account_id";
    base_theme_id = Prop.computed __type __id "base_theme_id";
    created_time = Prop.computed __type __id "created_time";
    id = Prop.computed __type __id "id";
    last_updated_time = Prop.computed __type __id "last_updated_time";
    name = Prop.computed __type __id "name";
    status = Prop.computed __type __id "status";
    tags = Prop.computed __type __id "tags";
    tags_all = Prop.computed __type __id "tags_all";
    theme_id = Prop.computed __type __id "theme_id";
    version_description = Prop.computed __type __id "version_description";
    version_number = Prop.computed __type __id "version_number";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_aws_quicksight_theme (aws_quicksight_theme ?aws_account_id ?id ?tags ?tags_all ?version_description ?timeouts ~base_theme_id ~name ~theme_id ~configuration ~permissions ());
    attrs=__attrs;
  };;

let register ?tf_module ?aws_account_id ?id ?tags ?tags_all ?version_description ?timeouts ~base_theme_id ~name ~theme_id ~configuration ~permissions __id =
  let (r : _ Tf_core.resource) = make ?aws_account_id ?id ?tags ?tags_all ?version_description ?timeouts ~base_theme_id ~name ~theme_id ~configuration ~permissions __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

