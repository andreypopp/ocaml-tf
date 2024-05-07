(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type trigger = {
  branches : string prop list option; [@option]
  custom_data : string prop option; [@option]
  destination_arn : string prop;
  events : string prop list;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trigger) -> ()

let yojson_of_trigger =
  (function
   | {
       branches = v_branches;
       custom_data = v_custom_data;
       destination_arn = v_destination_arn;
       events = v_events;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_events
         in
         ("events", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_arn
         in
         ("destination_arn", arg) :: bnds
       in
       let bnds =
         match v_custom_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_branches with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "branches", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : trigger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trigger

[@@@deriving.end]

type aws_codecommit_trigger = {
  id : string prop option; [@option]
  repository_name : string prop;
  trigger : trigger list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codecommit_trigger) -> ()

let yojson_of_aws_codecommit_trigger =
  (function
   | {
       id = v_id;
       repository_name = v_repository_name;
       trigger = v_trigger;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_trigger v_trigger in
         ("trigger", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_name
         in
         ("repository_name", arg) :: bnds
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
    : aws_codecommit_trigger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codecommit_trigger

[@@@deriving.end]

let trigger ?branches ?custom_data ~destination_arn ~events ~name ()
    : trigger =
  { branches; custom_data; destination_arn; events; name }

let aws_codecommit_trigger ?id ~repository_name ~trigger () :
    aws_codecommit_trigger =
  { id; repository_name; trigger }

type t = {
  tf_name : string;
  configuration_id : string prop;
  id : string prop;
  repository_name : string prop;
}

let make ?id ~repository_name ~trigger __id =
  let __type = "aws_codecommit_trigger" in
  let __attrs =
    ({
       tf_name = __id;
       configuration_id =
         Prop.computed __type __id "configuration_id";
       id = Prop.computed __type __id "id";
       repository_name = Prop.computed __type __id "repository_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codecommit_trigger
        (aws_codecommit_trigger ?id ~repository_name ~trigger ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~repository_name ~trigger __id =
  let (r : _ Tf_core.resource) =
    make ?id ~repository_name ~trigger __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
