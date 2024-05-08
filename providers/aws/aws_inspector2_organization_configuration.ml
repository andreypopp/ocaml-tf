(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auto_enable = {
  ec2 : bool prop;
  ecr : bool prop;
  lambda : bool prop option; [@option]
  lambda_code : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_enable) -> ()

let yojson_of_auto_enable =
  (function
   | {
       ec2 = v_ec2;
       ecr = v_ecr;
       lambda = v_lambda;
       lambda_code = v_lambda_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_lambda_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "lambda_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lambda with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "lambda", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_ecr in
         ("ecr", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_ec2 in
         ("ec2", arg) :: bnds
       in
       `Assoc bnds
    : auto_enable -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_enable

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type aws_inspector2_organization_configuration = {
  id : string prop option; [@option]
  auto_enable : auto_enable list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_inspector2_organization_configuration) -> ()

let yojson_of_aws_inspector2_organization_configuration =
  (function
   | {
       id = v_id;
       auto_enable = v_auto_enable;
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
         if [] = v_auto_enable then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auto_enable) v_auto_enable
           in
           let bnd = "auto_enable", arg in
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
    : aws_inspector2_organization_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_inspector2_organization_configuration

[@@@deriving.end]

let auto_enable ?lambda ?lambda_code ~ec2 ~ecr () : auto_enable =
  { ec2; ecr; lambda; lambda_code }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_inspector2_organization_configuration ?id ?timeouts
    ~auto_enable () : aws_inspector2_organization_configuration =
  { id; auto_enable; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  max_account_limit_reached : bool prop;
}

let make ?id ?timeouts ~auto_enable __id =
  let __type = "aws_inspector2_organization_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       max_account_limit_reached =
         Prop.computed __type __id "max_account_limit_reached";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_inspector2_organization_configuration
        (aws_inspector2_organization_configuration ?id ?timeouts
           ~auto_enable ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~auto_enable __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~auto_enable __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
