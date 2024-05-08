(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_acmpca_permission = {
  actions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  certificate_authority_arn : string prop;
  id : string prop option; [@option]
  principal : string prop;
  source_account : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_acmpca_permission) -> ()

let yojson_of_aws_acmpca_permission =
  (function
   | {
       actions = v_actions;
       certificate_authority_arn = v_certificate_authority_arn;
       id = v_id;
       principal = v_principal;
       source_account = v_source_account;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_account", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal in
         ("principal", arg) :: bnds
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
           yojson_of_prop yojson_of_string
             v_certificate_authority_arn
         in
         ("certificate_authority_arn", arg) :: bnds
       in
       let bnds =
         if [] = v_actions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_actions
           in
           let bnd = "actions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : aws_acmpca_permission -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_acmpca_permission

[@@@deriving.end]

let aws_acmpca_permission ?id ?source_account ~actions
    ~certificate_authority_arn ~principal () : aws_acmpca_permission
    =
  {
    actions;
    certificate_authority_arn;
    id;
    principal;
    source_account;
  }

type t = {
  tf_name : string;
  actions : string list prop;
  certificate_authority_arn : string prop;
  id : string prop;
  policy : string prop;
  principal : string prop;
  source_account : string prop;
}

let make ?id ?source_account ~actions ~certificate_authority_arn
    ~principal __id =
  let __type = "aws_acmpca_permission" in
  let __attrs =
    ({
       tf_name = __id;
       actions = Prop.computed __type __id "actions";
       certificate_authority_arn =
         Prop.computed __type __id "certificate_authority_arn";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       principal = Prop.computed __type __id "principal";
       source_account = Prop.computed __type __id "source_account";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_acmpca_permission
        (aws_acmpca_permission ?id ?source_account ~actions
           ~certificate_authority_arn ~principal ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?source_account ~actions
    ~certificate_authority_arn ~principal __id =
  let (r : _ Tf_core.resource) =
    make ?id ?source_account ~actions ~certificate_authority_arn
      ~principal __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
