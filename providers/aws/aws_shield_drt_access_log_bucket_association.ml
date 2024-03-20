(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_shield_drt_access_log_bucket_association = {
  log_bucket : string prop;
  role_arn_association_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_shield_drt_access_log_bucket_association) -> ()

let yojson_of_aws_shield_drt_access_log_bucket_association =
  (function
   | {
       log_bucket = v_log_bucket;
       role_arn_association_id = v_role_arn_association_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_role_arn_association_id
         in
         ("role_arn_association_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_bucket in
         ("log_bucket", arg) :: bnds
       in
       `Assoc bnds
    : aws_shield_drt_access_log_bucket_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_shield_drt_access_log_bucket_association

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_shield_drt_access_log_bucket_association ?timeouts
    ~log_bucket ~role_arn_association_id () :
    aws_shield_drt_access_log_bucket_association =
  { log_bucket; role_arn_association_id; timeouts }

type t = {
  id : string prop;
  log_bucket : string prop;
  role_arn_association_id : string prop;
}

let make ?timeouts ~log_bucket ~role_arn_association_id __id =
  let __type = "aws_shield_drt_access_log_bucket_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       log_bucket = Prop.computed __type __id "log_bucket";
       role_arn_association_id =
         Prop.computed __type __id "role_arn_association_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_shield_drt_access_log_bucket_association
        (aws_shield_drt_access_log_bucket_association ?timeouts
           ~log_bucket ~role_arn_association_id ());
    attrs = __attrs;
  }

let register ?tf_module ?timeouts ~log_bucket
    ~role_arn_association_id __id =
  let (r : _ Tf_core.resource) =
    make ?timeouts ~log_bucket ~role_arn_association_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
