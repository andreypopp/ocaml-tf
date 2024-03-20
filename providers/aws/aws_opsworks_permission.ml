(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_opsworks_permission = {
  allow_ssh : bool prop option; [@option]
  allow_sudo : bool prop option; [@option]
  id : string prop option; [@option]
  level : string prop option; [@option]
  stack_id : string prop;
  user_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_opsworks_permission) -> ()

let yojson_of_aws_opsworks_permission =
  (function
   | {
       allow_ssh = v_allow_ssh;
       allow_sudo = v_allow_sudo;
       id = v_id;
       level = v_level;
       stack_id = v_stack_id;
       user_arn = v_user_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_arn in
         ("user_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stack_id in
         ("stack_id", arg) :: bnds
       in
       let bnds =
         match v_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "level", arg in
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
       let bnds =
         match v_allow_sudo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_sudo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_ssh with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_ssh", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_opsworks_permission -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_opsworks_permission

[@@@deriving.end]

let aws_opsworks_permission ?allow_ssh ?allow_sudo ?id ?level
    ~stack_id ~user_arn () : aws_opsworks_permission =
  { allow_ssh; allow_sudo; id; level; stack_id; user_arn }

type t = {
  allow_ssh : bool prop;
  allow_sudo : bool prop;
  id : string prop;
  level : string prop;
  stack_id : string prop;
  user_arn : string prop;
}

let make ?allow_ssh ?allow_sudo ?id ?level ~stack_id ~user_arn __id =
  let __type = "aws_opsworks_permission" in
  let __attrs =
    ({
       allow_ssh = Prop.computed __type __id "allow_ssh";
       allow_sudo = Prop.computed __type __id "allow_sudo";
       id = Prop.computed __type __id "id";
       level = Prop.computed __type __id "level";
       stack_id = Prop.computed __type __id "stack_id";
       user_arn = Prop.computed __type __id "user_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opsworks_permission
        (aws_opsworks_permission ?allow_ssh ?allow_sudo ?id ?level
           ~stack_id ~user_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_ssh ?allow_sudo ?id ?level ~stack_id
    ~user_arn __id =
  let (r : _ Tf_core.resource) =
    make ?allow_ssh ?allow_sudo ?id ?level ~stack_id ~user_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
