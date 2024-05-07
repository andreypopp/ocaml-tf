(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_securityhub_member = {
  account_id : string prop;
  email : string prop option; [@option]
  id : string prop option; [@option]
  invite : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_securityhub_member) -> ()

let yojson_of_aws_securityhub_member =
  (function
   | {
       account_id = v_account_id;
       email = v_email;
       id = v_id;
       invite = v_invite;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_invite with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "invite", arg in
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
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_securityhub_member -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_securityhub_member

[@@@deriving.end]

let aws_securityhub_member ?email ?id ?invite ~account_id () :
    aws_securityhub_member =
  { account_id; email; id; invite }

type t = {
  tf_name : string;
  account_id : string prop;
  email : string prop;
  id : string prop;
  invite : bool prop;
  master_id : string prop;
  member_status : string prop;
}

let make ?email ?id ?invite ~account_id __id =
  let __type = "aws_securityhub_member" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       invite = Prop.computed __type __id "invite";
       master_id = Prop.computed __type __id "master_id";
       member_status = Prop.computed __type __id "member_status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securityhub_member
        (aws_securityhub_member ?email ?id ?invite ~account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?email ?id ?invite ~account_id __id =
  let (r : _ Tf_core.resource) =
    make ?email ?id ?invite ~account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
