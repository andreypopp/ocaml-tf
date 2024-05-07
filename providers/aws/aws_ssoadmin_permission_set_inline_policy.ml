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

type aws_ssoadmin_permission_set_inline_policy = {
  id : string prop option; [@option]
  inline_policy : string prop;
  instance_arn : string prop;
  permission_set_arn : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssoadmin_permission_set_inline_policy) -> ()

let yojson_of_aws_ssoadmin_permission_set_inline_policy =
  (function
   | {
       id = v_id;
       inline_policy = v_inline_policy;
       instance_arn = v_instance_arn;
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
         let arg = yojson_of_prop yojson_of_string v_instance_arn in
         ("instance_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_inline_policy in
         ("inline_policy", arg) :: bnds
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
    : aws_ssoadmin_permission_set_inline_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssoadmin_permission_set_inline_policy

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ssoadmin_permission_set_inline_policy ?id ?timeouts
    ~inline_policy ~instance_arn ~permission_set_arn () :
    aws_ssoadmin_permission_set_inline_policy =
  { id; inline_policy; instance_arn; permission_set_arn; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  inline_policy : string prop;
  instance_arn : string prop;
  permission_set_arn : string prop;
}

let make ?id ?timeouts ~inline_policy ~instance_arn
    ~permission_set_arn __id =
  let __type = "aws_ssoadmin_permission_set_inline_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       inline_policy = Prop.computed __type __id "inline_policy";
       instance_arn = Prop.computed __type __id "instance_arn";
       permission_set_arn =
         Prop.computed __type __id "permission_set_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssoadmin_permission_set_inline_policy
        (aws_ssoadmin_permission_set_inline_policy ?id ?timeouts
           ~inline_policy ~instance_arn ~permission_set_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~inline_policy ~instance_arn
    ~permission_set_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~inline_policy ~instance_arn
      ~permission_set_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
