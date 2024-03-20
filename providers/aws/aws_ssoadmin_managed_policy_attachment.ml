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

type aws_ssoadmin_managed_policy_attachment = {
  id : string prop option; [@option]
  instance_arn : string prop;
  managed_policy_arn : string prop;
  permission_set_arn : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssoadmin_managed_policy_attachment) -> ()

let yojson_of_aws_ssoadmin_managed_policy_attachment =
  (function
   | {
       id = v_id;
       instance_arn = v_instance_arn;
       managed_policy_arn = v_managed_policy_arn;
       permission_set_arn = v_permission_set_arn;
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
           yojson_of_prop yojson_of_string v_permission_set_arn
         in
         ("permission_set_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_managed_policy_arn
         in
         ("managed_policy_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_arn in
         ("instance_arn", arg) :: bnds
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
    : aws_ssoadmin_managed_policy_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssoadmin_managed_policy_attachment

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ssoadmin_managed_policy_attachment ?id ?timeouts
    ~instance_arn ~managed_policy_arn ~permission_set_arn () :
    aws_ssoadmin_managed_policy_attachment =
  {
    id;
    instance_arn;
    managed_policy_arn;
    permission_set_arn;
    timeouts;
  }

type t = {
  id : string prop;
  instance_arn : string prop;
  managed_policy_arn : string prop;
  managed_policy_name : string prop;
  permission_set_arn : string prop;
}

let make ?id ?timeouts ~instance_arn ~managed_policy_arn
    ~permission_set_arn __id =
  let __type = "aws_ssoadmin_managed_policy_attachment" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       instance_arn = Prop.computed __type __id "instance_arn";
       managed_policy_arn =
         Prop.computed __type __id "managed_policy_arn";
       managed_policy_name =
         Prop.computed __type __id "managed_policy_name";
       permission_set_arn =
         Prop.computed __type __id "permission_set_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssoadmin_managed_policy_attachment
        (aws_ssoadmin_managed_policy_attachment ?id ?timeouts
           ~instance_arn ~managed_policy_arn ~permission_set_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~instance_arn
    ~managed_policy_arn ~permission_set_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~instance_arn ~managed_policy_arn
      ~permission_set_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
