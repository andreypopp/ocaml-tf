(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sub_domain = { branch_name : string prop; prefix : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : sub_domain) -> ()

let yojson_of_sub_domain =
  (function
   | { branch_name = v_branch_name; prefix = v_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_prefix in
         ("prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch_name in
         ("branch_name", arg) :: bnds
       in
       `Assoc bnds
    : sub_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sub_domain

[@@@deriving.end]

type aws_amplify_domain_association = {
  app_id : string prop;
  domain_name : string prop;
  enable_auto_sub_domain : bool prop option; [@option]
  id : string prop option; [@option]
  wait_for_verification : bool prop option; [@option]
  sub_domain : sub_domain list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_amplify_domain_association) -> ()

let yojson_of_aws_amplify_domain_association =
  (function
   | {
       app_id = v_app_id;
       domain_name = v_domain_name;
       enable_auto_sub_domain = v_enable_auto_sub_domain;
       id = v_id;
       wait_for_verification = v_wait_for_verification;
       sub_domain = v_sub_domain;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_sub_domain then bnds
         else
           let arg =
             (yojson_of_list yojson_of_sub_domain) v_sub_domain
           in
           let bnd = "sub_domain", arg in
           bnd :: bnds
       in
       let bnds =
         match v_wait_for_verification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "wait_for_verification", arg in
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
         match v_enable_auto_sub_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_auto_sub_domain", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_amplify_domain_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_amplify_domain_association

[@@@deriving.end]

let sub_domain ~branch_name ~prefix () : sub_domain =
  { branch_name; prefix }

let aws_amplify_domain_association ?enable_auto_sub_domain ?id
    ?wait_for_verification ~app_id ~domain_name ~sub_domain () :
    aws_amplify_domain_association =
  {
    app_id;
    domain_name;
    enable_auto_sub_domain;
    id;
    wait_for_verification;
    sub_domain;
  }

type t = {
  tf_name : string;
  app_id : string prop;
  arn : string prop;
  certificate_verification_dns_record : string prop;
  domain_name : string prop;
  enable_auto_sub_domain : bool prop;
  id : string prop;
  wait_for_verification : bool prop;
}

let make ?enable_auto_sub_domain ?id ?wait_for_verification ~app_id
    ~domain_name ~sub_domain __id =
  let __type = "aws_amplify_domain_association" in
  let __attrs =
    ({
       tf_name = __id;
       app_id = Prop.computed __type __id "app_id";
       arn = Prop.computed __type __id "arn";
       certificate_verification_dns_record =
         Prop.computed __type __id
           "certificate_verification_dns_record";
       domain_name = Prop.computed __type __id "domain_name";
       enable_auto_sub_domain =
         Prop.computed __type __id "enable_auto_sub_domain";
       id = Prop.computed __type __id "id";
       wait_for_verification =
         Prop.computed __type __id "wait_for_verification";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_amplify_domain_association
        (aws_amplify_domain_association ?enable_auto_sub_domain ?id
           ?wait_for_verification ~app_id ~domain_name ~sub_domain ());
    attrs = __attrs;
  }

let register ?tf_module ?enable_auto_sub_domain ?id
    ?wait_for_verification ~app_id ~domain_name ~sub_domain __id =
  let (r : _ Tf_core.resource) =
    make ?enable_auto_sub_domain ?id ?wait_for_verification ~app_id
      ~domain_name ~sub_domain __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
