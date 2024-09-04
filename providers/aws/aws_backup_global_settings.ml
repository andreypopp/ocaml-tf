(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_backup_global_settings = {
  global_settings : string prop Tf_core.assoc;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_backup_global_settings) -> ()

let yojson_of_aws_backup_global_settings =
  (function
   | { global_settings = v_global_settings; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_global_settings
         in
         ("global_settings", arg) :: bnds
       in
       `Assoc bnds
    : aws_backup_global_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_backup_global_settings

[@@@deriving.end]

let aws_backup_global_settings ?id ~global_settings () :
    aws_backup_global_settings =
  { global_settings; id }

type t = {
  tf_name : string;
  global_settings : string Tf_core.assoc prop;
  id : string prop;
}

let make ?id ~global_settings __id =
  let __type = "aws_backup_global_settings" in
  let __attrs =
    ({
       tf_name = __id;
       global_settings = Prop.computed __type __id "global_settings";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_backup_global_settings
        (aws_backup_global_settings ?id ~global_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~global_settings __id =
  let (r : _ Tf_core.resource) = make ?id ~global_settings __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
