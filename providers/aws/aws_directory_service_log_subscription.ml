(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_directory_service_log_subscription = {
  directory_id : string prop;
  id : string prop option; [@option]
  log_group_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_directory_service_log_subscription) -> ()

let yojson_of_aws_directory_service_log_subscription =
  (function
   | {
       directory_id = v_directory_id;
       id = v_id;
       log_group_name = v_log_group_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_log_group_name
         in
         ("log_group_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_directory_id in
         ("directory_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_directory_service_log_subscription ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_directory_service_log_subscription

[@@@deriving.end]

let aws_directory_service_log_subscription ?id ~directory_id
    ~log_group_name () : aws_directory_service_log_subscription =
  { directory_id; id; log_group_name }

type t = {
  directory_id : string prop;
  id : string prop;
  log_group_name : string prop;
}

let make ?id ~directory_id ~log_group_name __id =
  let __type = "aws_directory_service_log_subscription" in
  let __attrs =
    ({
       directory_id = Prop.computed __type __id "directory_id";
       id = Prop.computed __type __id "id";
       log_group_name = Prop.computed __type __id "log_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_directory_service_log_subscription
        (aws_directory_service_log_subscription ?id ~directory_id
           ~log_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~directory_id ~log_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~directory_id ~log_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
