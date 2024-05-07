(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_log_destination_policy = {
  access_policy : string prop;
  destination_name : string prop;
  force_update : bool prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_log_destination_policy) -> ()

let yojson_of_aws_cloudwatch_log_destination_policy =
  (function
   | {
       access_policy = v_access_policy;
       destination_name = v_destination_name;
       force_update = v_force_update;
       id = v_id;
     } ->
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
         match v_force_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_update", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_name
         in
         ("destination_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access_policy in
         ("access_policy", arg) :: bnds
       in
       `Assoc bnds
    : aws_cloudwatch_log_destination_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_log_destination_policy

[@@@deriving.end]

let aws_cloudwatch_log_destination_policy ?force_update ?id
    ~access_policy ~destination_name () :
    aws_cloudwatch_log_destination_policy =
  { access_policy; destination_name; force_update; id }

type t = {
  tf_name : string;
  access_policy : string prop;
  destination_name : string prop;
  force_update : bool prop;
  id : string prop;
}

let make ?force_update ?id ~access_policy ~destination_name __id =
  let __type = "aws_cloudwatch_log_destination_policy" in
  let __attrs =
    ({
       tf_name = __id;
       access_policy = Prop.computed __type __id "access_policy";
       destination_name =
         Prop.computed __type __id "destination_name";
       force_update = Prop.computed __type __id "force_update";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_log_destination_policy
        (aws_cloudwatch_log_destination_policy ?force_update ?id
           ~access_policy ~destination_name ());
    attrs = __attrs;
  }

let register ?tf_module ?force_update ?id ~access_policy
    ~destination_name __id =
  let (r : _ Tf_core.resource) =
    make ?force_update ?id ~access_policy ~destination_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
