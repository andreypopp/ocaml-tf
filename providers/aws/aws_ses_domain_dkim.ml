(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ses_domain_dkim = {
  domain : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ses_domain_dkim) -> ()

let yojson_of_aws_ses_domain_dkim =
  (function
   | { domain = v_domain; id = v_id } ->
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
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       `Assoc bnds
    : aws_ses_domain_dkim -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ses_domain_dkim

[@@@deriving.end]

let aws_ses_domain_dkim ?id ~domain () : aws_ses_domain_dkim =
  { domain; id }

type t = {
  dkim_tokens : string list prop;
  domain : string prop;
  id : string prop;
}

let make ?id ~domain __id =
  let __type = "aws_ses_domain_dkim" in
  let __attrs =
    ({
       dkim_tokens = Prop.computed __type __id "dkim_tokens";
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ses_domain_dkim
        (aws_ses_domain_dkim ?id ~domain ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~domain __id =
  let (r : _ Tf_core.resource) = make ?id ~domain __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
