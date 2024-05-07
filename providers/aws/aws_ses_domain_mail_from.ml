(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ses_domain_mail_from = {
  behavior_on_mx_failure : string prop option; [@option]
  domain : string prop;
  id : string prop option; [@option]
  mail_from_domain : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ses_domain_mail_from) -> ()

let yojson_of_aws_ses_domain_mail_from =
  (function
   | {
       behavior_on_mx_failure = v_behavior_on_mx_failure;
       domain = v_domain;
       id = v_id;
       mail_from_domain = v_mail_from_domain;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_mail_from_domain
         in
         ("mail_from_domain", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       let bnds =
         match v_behavior_on_mx_failure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "behavior_on_mx_failure", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ses_domain_mail_from -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ses_domain_mail_from

[@@@deriving.end]

let aws_ses_domain_mail_from ?behavior_on_mx_failure ?id ~domain
    ~mail_from_domain () : aws_ses_domain_mail_from =
  { behavior_on_mx_failure; domain; id; mail_from_domain }

type t = {
  tf_name : string;
  behavior_on_mx_failure : string prop;
  domain : string prop;
  id : string prop;
  mail_from_domain : string prop;
}

let make ?behavior_on_mx_failure ?id ~domain ~mail_from_domain __id =
  let __type = "aws_ses_domain_mail_from" in
  let __attrs =
    ({
       tf_name = __id;
       behavior_on_mx_failure =
         Prop.computed __type __id "behavior_on_mx_failure";
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
       mail_from_domain =
         Prop.computed __type __id "mail_from_domain";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ses_domain_mail_from
        (aws_ses_domain_mail_from ?behavior_on_mx_failure ?id ~domain
           ~mail_from_domain ());
    attrs = __attrs;
  }

let register ?tf_module ?behavior_on_mx_failure ?id ~domain
    ~mail_from_domain __id =
  let (r : _ Tf_core.resource) =
    make ?behavior_on_mx_failure ?id ~domain ~mail_from_domain __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
