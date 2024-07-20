(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type applications__icon_s3_location = {
  s3_bucket : string prop;
  s3_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : applications__icon_s3_location) -> ()

let yojson_of_applications__icon_s3_location =
  (function
   | { s3_bucket = v_s3_bucket; s3_key = v_s3_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_key in
         ("s3_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_bucket in
         ("s3_bucket", arg) :: bnds
       in
       `Assoc bnds
    : applications__icon_s3_location ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_applications__icon_s3_location

[@@@deriving.end]

type applications = {
  app_block_arn : string prop;
  arn : string prop;
  created_time : string prop;
  description : string prop;
  display_name : string prop;
  enabled : bool prop;
  icon_s3_location : applications__icon_s3_location list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  icon_url : string prop;
  instance_families : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  launch_parameters : string prop;
  launch_path : string prop;
  metadata : (string * string prop) list;
  name : string prop;
  platforms : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  working_directory : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : applications) -> ()

let yojson_of_applications =
  (function
   | {
       app_block_arn = v_app_block_arn;
       arn = v_arn;
       created_time = v_created_time;
       description = v_description;
       display_name = v_display_name;
       enabled = v_enabled;
       icon_s3_location = v_icon_s3_location;
       icon_url = v_icon_url;
       instance_families = v_instance_families;
       launch_parameters = v_launch_parameters;
       launch_path = v_launch_path;
       metadata = v_metadata;
       name = v_name;
       platforms = v_platforms;
       working_directory = v_working_directory;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_working_directory
         in
         ("working_directory", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_platforms then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_platforms
           in
           let bnd = "platforms", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_metadata
         in
         ("metadata", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_launch_path in
         ("launch_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_launch_parameters
         in
         ("launch_parameters", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_instance_families then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_instance_families
           in
           let bnd = "instance_families", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_icon_url in
         ("icon_url", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_icon_s3_location then bnds
         else
           let arg =
             (yojson_of_list yojson_of_applications__icon_s3_location)
               v_icon_s3_location
           in
           let bnd = "icon_s3_location", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_created_time in
         ("created_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_block_arn in
         ("app_block_arn", arg) :: bnds
       in
       `Assoc bnds
    : applications -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_applications

[@@@deriving.end]

type image_permissions = {
  allow_fleet : bool prop;
  allow_image_builder : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : image_permissions) -> ()

let yojson_of_image_permissions =
  (function
   | {
       allow_fleet = v_allow_fleet;
       allow_image_builder = v_allow_image_builder;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_image_builder
         in
         ("allow_image_builder", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_allow_fleet in
         ("allow_fleet", arg) :: bnds
       in
       `Assoc bnds
    : image_permissions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_image_permissions

[@@@deriving.end]

type state_change_reason = {
  code : string prop;
  message : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : state_change_reason) -> ()

let yojson_of_state_change_reason =
  (function
   | { code = v_code; message = v_message } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_code in
         ("code", arg) :: bnds
       in
       `Assoc bnds
    : state_change_reason -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_state_change_reason

[@@@deriving.end]

type aws_appstream_image = {
  arn : string prop option; [@option]
  most_recent : bool prop option; [@option]
  name : string prop option; [@option]
  name_regex : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appstream_image) -> ()

let yojson_of_aws_appstream_image =
  (function
   | {
       arn = v_arn;
       most_recent = v_most_recent;
       name = v_name;
       name_regex = v_name_regex;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_most_recent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "most_recent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_appstream_image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appstream_image

[@@@deriving.end]

let aws_appstream_image ?arn ?most_recent ?name ?name_regex ?type_ ()
    : aws_appstream_image =
  { arn; most_recent; name; name_regex; type_ }

type t = {
  tf_name : string;
  applications : applications list prop;
  appstream_agent_version : string prop;
  arn : string prop;
  base_image_arn : string prop;
  created_time : string prop;
  description : string prop;
  display_name : string prop;
  image_builder_name : string prop;
  image_builder_supported : bool prop;
  image_permissions : image_permissions list prop;
  most_recent : bool prop;
  name : string prop;
  name_regex : string prop;
  platform : string prop;
  public_base_image_released_date : string prop;
  state : string prop;
  state_change_reason : state_change_reason list prop;
  type_ : string prop;
}

let make ?arn ?most_recent ?name ?name_regex ?type_ __id =
  let __type = "aws_appstream_image" in
  let __attrs =
    ({
       tf_name = __id;
       applications = Prop.computed __type __id "applications";
       appstream_agent_version =
         Prop.computed __type __id "appstream_agent_version";
       arn = Prop.computed __type __id "arn";
       base_image_arn = Prop.computed __type __id "base_image_arn";
       created_time = Prop.computed __type __id "created_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       image_builder_name =
         Prop.computed __type __id "image_builder_name";
       image_builder_supported =
         Prop.computed __type __id "image_builder_supported";
       image_permissions =
         Prop.computed __type __id "image_permissions";
       most_recent = Prop.computed __type __id "most_recent";
       name = Prop.computed __type __id "name";
       name_regex = Prop.computed __type __id "name_regex";
       platform = Prop.computed __type __id "platform";
       public_base_image_released_date =
         Prop.computed __type __id "public_base_image_released_date";
       state = Prop.computed __type __id "state";
       state_change_reason =
         Prop.computed __type __id "state_change_reason";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appstream_image
        (aws_appstream_image ?arn ?most_recent ?name ?name_regex
           ?type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?arn ?most_recent ?name ?name_regex ?type_
    __id =
  let (r : _ Tf_core.resource) =
    make ?arn ?most_recent ?name ?name_regex ?type_ __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
