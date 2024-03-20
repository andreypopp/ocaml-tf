(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__ui_color_palette = {
  accent : string prop;
  accent_foreground : string prop;
  danger : string prop;
  danger_foreground : string prop;
  dimension : string prop;
  dimension_foreground : string prop;
  measure : string prop;
  measure_foreground : string prop;
  primary_background : string prop;
  primary_foreground : string prop;
  secondary_background : string prop;
  secondary_foreground : string prop;
  success : string prop;
  success_foreground : string prop;
  warning : string prop;
  warning_foreground : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__ui_color_palette) -> ()

let yojson_of_configuration__ui_color_palette =
  (function
   | {
       accent = v_accent;
       accent_foreground = v_accent_foreground;
       danger = v_danger;
       danger_foreground = v_danger_foreground;
       dimension = v_dimension;
       dimension_foreground = v_dimension_foreground;
       measure = v_measure;
       measure_foreground = v_measure_foreground;
       primary_background = v_primary_background;
       primary_foreground = v_primary_foreground;
       secondary_background = v_secondary_background;
       secondary_foreground = v_secondary_foreground;
       success = v_success;
       success_foreground = v_success_foreground;
       warning = v_warning;
       warning_foreground = v_warning_foreground;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_warning_foreground
         in
         ("warning_foreground", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_warning in
         ("warning", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_success_foreground
         in
         ("success_foreground", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_success in
         ("success", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secondary_foreground
         in
         ("secondary_foreground", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secondary_background
         in
         ("secondary_background", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_primary_foreground
         in
         ("primary_foreground", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_primary_background
         in
         ("primary_background", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_measure_foreground
         in
         ("measure_foreground", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_measure in
         ("measure", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_dimension_foreground
         in
         ("dimension_foreground", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dimension in
         ("dimension", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_danger_foreground
         in
         ("danger_foreground", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_danger in
         ("danger", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_accent_foreground
         in
         ("accent_foreground", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_accent in
         ("accent", arg) :: bnds
       in
       `Assoc bnds
    : configuration__ui_color_palette ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__ui_color_palette

[@@@deriving.end]

type configuration__typography__font_families = {
  font_family : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__typography__font_families) -> ()

let yojson_of_configuration__typography__font_families =
  (function
   | { font_family = v_font_family } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_font_family in
         ("font_family", arg) :: bnds
       in
       `Assoc bnds
    : configuration__typography__font_families ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__typography__font_families

[@@@deriving.end]

type configuration__typography = {
  font_families : configuration__typography__font_families list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__typography) -> ()

let yojson_of_configuration__typography =
  (function
   | { font_families = v_font_families } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_configuration__typography__font_families
             v_font_families
         in
         ("font_families", arg) :: bnds
       in
       `Assoc bnds
    : configuration__typography -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__typography

[@@@deriving.end]

type configuration__sheet__tile_layout__margin = { show : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__sheet__tile_layout__margin) -> ()

let yojson_of_configuration__sheet__tile_layout__margin =
  (function
   | { show = v_show } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_show in
         ("show", arg) :: bnds
       in
       `Assoc bnds
    : configuration__sheet__tile_layout__margin ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__sheet__tile_layout__margin

[@@@deriving.end]

type configuration__sheet__tile_layout__gutter = { show : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__sheet__tile_layout__gutter) -> ()

let yojson_of_configuration__sheet__tile_layout__gutter =
  (function
   | { show = v_show } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_show in
         ("show", arg) :: bnds
       in
       `Assoc bnds
    : configuration__sheet__tile_layout__gutter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__sheet__tile_layout__gutter

[@@@deriving.end]

type configuration__sheet__tile_layout = {
  gutter : configuration__sheet__tile_layout__gutter list;
  margin : configuration__sheet__tile_layout__margin list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__sheet__tile_layout) -> ()

let yojson_of_configuration__sheet__tile_layout =
  (function
   | { gutter = v_gutter; margin = v_margin } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_configuration__sheet__tile_layout__margin
             v_margin
         in
         ("margin", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_configuration__sheet__tile_layout__gutter
             v_gutter
         in
         ("gutter", arg) :: bnds
       in
       `Assoc bnds
    : configuration__sheet__tile_layout ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__sheet__tile_layout

[@@@deriving.end]

type configuration__sheet__tile__border = { show : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__sheet__tile__border) -> ()

let yojson_of_configuration__sheet__tile__border =
  (function
   | { show = v_show } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_show in
         ("show", arg) :: bnds
       in
       `Assoc bnds
    : configuration__sheet__tile__border ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__sheet__tile__border

[@@@deriving.end]

type configuration__sheet__tile = {
  border : configuration__sheet__tile__border list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__sheet__tile) -> ()

let yojson_of_configuration__sheet__tile =
  (function
   | { border = v_border } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_configuration__sheet__tile__border v_border
         in
         ("border", arg) :: bnds
       in
       `Assoc bnds
    : configuration__sheet__tile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__sheet__tile

[@@@deriving.end]

type configuration__sheet = {
  tile : configuration__sheet__tile list;
  tile_layout : configuration__sheet__tile_layout list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__sheet) -> ()

let yojson_of_configuration__sheet =
  (function
   | { tile = v_tile; tile_layout = v_tile_layout } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_configuration__sheet__tile_layout
             v_tile_layout
         in
         ("tile_layout", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_configuration__sheet__tile v_tile
         in
         ("tile", arg) :: bnds
       in
       `Assoc bnds
    : configuration__sheet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__sheet

[@@@deriving.end]

type configuration__data_color_palette = {
  colors : string prop list;
  empty_fill_color : string prop;
  min_max_gradient : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__data_color_palette) -> ()

let yojson_of_configuration__data_color_palette =
  (function
   | {
       colors = v_colors;
       empty_fill_color = v_empty_fill_color;
       min_max_gradient = v_min_max_gradient;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_min_max_gradient
         in
         ("min_max_gradient", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_empty_fill_color
         in
         ("empty_fill_color", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_colors
         in
         ("colors", arg) :: bnds
       in
       `Assoc bnds
    : configuration__data_color_palette ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__data_color_palette

[@@@deriving.end]

type configuration = {
  data_color_palette : configuration__data_color_palette list;
  sheet : configuration__sheet list;
  typography : configuration__typography list;
  ui_color_palette : configuration__ui_color_palette list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration) -> ()

let yojson_of_configuration =
  (function
   | {
       data_color_palette = v_data_color_palette;
       sheet = v_sheet;
       typography = v_typography;
       ui_color_palette = v_ui_color_palette;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_configuration__ui_color_palette
             v_ui_color_palette
         in
         ("ui_color_palette", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_configuration__typography
             v_typography
         in
         ("typography", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_configuration__sheet v_sheet
         in
         ("sheet", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_configuration__data_color_palette
             v_data_color_palette
         in
         ("data_color_palette", arg) :: bnds
       in
       `Assoc bnds
    : configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration

[@@@deriving.end]

type permissions = {
  actions : string prop list;
  principal : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : permissions) -> ()

let yojson_of_permissions =
  (function
   | { actions = v_actions; principal = v_principal } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal in
         ("principal", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_actions
         in
         ("actions", arg) :: bnds
       in
       `Assoc bnds
    : permissions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_permissions

[@@@deriving.end]

type aws_quicksight_theme = {
  aws_account_id : string prop option; [@option]
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  theme_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_quicksight_theme) -> ()

let yojson_of_aws_quicksight_theme =
  (function
   | {
       aws_account_id = v_aws_account_id;
       id = v_id;
       tags = v_tags;
       theme_id = v_theme_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_theme_id in
         ("theme_id", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aws_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aws_account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_quicksight_theme -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_quicksight_theme

[@@@deriving.end]

let aws_quicksight_theme ?aws_account_id ?id ?tags ~theme_id () :
    aws_quicksight_theme =
  { aws_account_id; id; tags; theme_id }

type t = {
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

let make ?aws_account_id ?id ?tags ~theme_id __id =
  let __type = "aws_quicksight_theme" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       aws_account_id = Prop.computed __type __id "aws_account_id";
       base_theme_id = Prop.computed __type __id "base_theme_id";
       configuration = Prop.computed __type __id "configuration";
       created_time = Prop.computed __type __id "created_time";
       id = Prop.computed __type __id "id";
       last_updated_time =
         Prop.computed __type __id "last_updated_time";
       name = Prop.computed __type __id "name";
       permissions = Prop.computed __type __id "permissions";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       theme_id = Prop.computed __type __id "theme_id";
       version_description =
         Prop.computed __type __id "version_description";
       version_number = Prop.computed __type __id "version_number";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_quicksight_theme
        (aws_quicksight_theme ?aws_account_id ?id ?tags ~theme_id ());
    attrs = __attrs;
  }

let register ?tf_module ?aws_account_id ?id ?tags ~theme_id __id =
  let (r : _ Tf_core.resource) =
    make ?aws_account_id ?id ?tags ~theme_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
