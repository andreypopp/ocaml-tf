(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type recording_group__exclusion_by_resource_types = {
  resource_types : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recording_group__exclusion_by_resource_types) -> ()

let yojson_of_recording_group__exclusion_by_resource_types =
  (function
   | { resource_types = v_resource_types } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_types", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : recording_group__exclusion_by_resource_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recording_group__exclusion_by_resource_types

[@@@deriving.end]

type recording_group__recording_strategy = {
  use_only : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recording_group__recording_strategy) -> ()

let yojson_of_recording_group__recording_strategy =
  (function
   | { use_only = v_use_only } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_use_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "use_only", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : recording_group__recording_strategy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recording_group__recording_strategy

[@@@deriving.end]

type recording_group = {
  all_supported : bool prop option; [@option]
  include_global_resource_types : bool prop option; [@option]
  resource_types : string prop list option; [@option]
  exclusion_by_resource_types :
    recording_group__exclusion_by_resource_types list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  recording_strategy : recording_group__recording_strategy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recording_group) -> ()

let yojson_of_recording_group =
  (function
   | {
       all_supported = v_all_supported;
       include_global_resource_types =
         v_include_global_resource_types;
       resource_types = v_resource_types;
       exclusion_by_resource_types = v_exclusion_by_resource_types;
       recording_strategy = v_recording_strategy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_recording_strategy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_recording_group__recording_strategy)
               v_recording_strategy
           in
           let bnd = "recording_strategy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_exclusion_by_resource_types then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_recording_group__exclusion_by_resource_types)
               v_exclusion_by_resource_types
           in
           let bnd = "exclusion_by_resource_types", arg in
           bnd :: bnds
       in
       let bnds =
         match v_resource_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_global_resource_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_global_resource_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_all_supported with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "all_supported", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : recording_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recording_group

[@@@deriving.end]

type recording_mode__recording_mode_override = {
  description : string prop option; [@option]
  recording_frequency : string prop;
  resource_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recording_mode__recording_mode_override) -> ()

let yojson_of_recording_mode__recording_mode_override =
  (function
   | {
       description = v_description;
       recording_frequency = v_recording_frequency;
       resource_types = v_resource_types;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_resource_types
           in
           let bnd = "resource_types", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_recording_frequency
         in
         ("recording_frequency", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : recording_mode__recording_mode_override ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recording_mode__recording_mode_override

[@@@deriving.end]

type recording_mode = {
  recording_frequency : string prop option; [@option]
  recording_mode_override :
    recording_mode__recording_mode_override list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recording_mode) -> ()

let yojson_of_recording_mode =
  (function
   | {
       recording_frequency = v_recording_frequency;
       recording_mode_override = v_recording_mode_override;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_recording_mode_override then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_recording_mode__recording_mode_override)
               v_recording_mode_override
           in
           let bnd = "recording_mode_override", arg in
           bnd :: bnds
       in
       let bnds =
         match v_recording_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recording_frequency", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : recording_mode -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recording_mode

[@@@deriving.end]

type aws_config_configuration_recorder = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  role_arn : string prop;
  recording_group : recording_group list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  recording_mode : recording_mode list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_config_configuration_recorder) -> ()

let yojson_of_aws_config_configuration_recorder =
  (function
   | {
       id = v_id;
       name = v_name;
       role_arn = v_role_arn;
       recording_group = v_recording_group;
       recording_mode = v_recording_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_recording_mode then bnds
         else
           let arg =
             (yojson_of_list yojson_of_recording_mode)
               v_recording_mode
           in
           let bnd = "recording_mode", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_recording_group then bnds
         else
           let arg =
             (yojson_of_list yojson_of_recording_group)
               v_recording_group
           in
           let bnd = "recording_group", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_config_configuration_recorder ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_config_configuration_recorder

[@@@deriving.end]

let recording_group__exclusion_by_resource_types ?resource_types () :
    recording_group__exclusion_by_resource_types =
  { resource_types }

let recording_group__recording_strategy ?use_only () :
    recording_group__recording_strategy =
  { use_only }

let recording_group ?all_supported ?include_global_resource_types
    ?resource_types ?(exclusion_by_resource_types = [])
    ?(recording_strategy = []) () : recording_group =
  {
    all_supported;
    include_global_resource_types;
    resource_types;
    exclusion_by_resource_types;
    recording_strategy;
  }

let recording_mode__recording_mode_override ?description
    ~recording_frequency ~resource_types () :
    recording_mode__recording_mode_override =
  { description; recording_frequency; resource_types }

let recording_mode ?recording_frequency
    ?(recording_mode_override = []) () : recording_mode =
  { recording_frequency; recording_mode_override }

let aws_config_configuration_recorder ?id ?name
    ?(recording_group = []) ?(recording_mode = []) ~role_arn () :
    aws_config_configuration_recorder =
  { id; name; role_arn; recording_group; recording_mode }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  role_arn : string prop;
}

let make ?id ?name ?(recording_group = []) ?(recording_mode = [])
    ~role_arn __id =
  let __type = "aws_config_configuration_recorder" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_config_configuration_recorder
        (aws_config_configuration_recorder ?id ?name ~recording_group
           ~recording_mode ~role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?(recording_group = [])
    ?(recording_mode = []) ~role_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ~recording_group ~recording_mode ~role_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
