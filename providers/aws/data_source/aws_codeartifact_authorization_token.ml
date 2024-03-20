(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_codeartifact_authorization_token = {
  domain : string prop;
  domain_owner : string prop option; [@option]
  duration_seconds : float prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codeartifact_authorization_token) -> ()

let yojson_of_aws_codeartifact_authorization_token =
  (function
   | {
       domain = v_domain;
       domain_owner = v_domain_owner;
       duration_seconds = v_duration_seconds;
       id = v_id;
     } ->
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
         match v_duration_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "duration_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domain_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain_owner", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       `Assoc bnds
    : aws_codeartifact_authorization_token ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codeartifact_authorization_token

[@@@deriving.end]

let aws_codeartifact_authorization_token ?domain_owner
    ?duration_seconds ?id ~domain () :
    aws_codeartifact_authorization_token =
  { domain; domain_owner; duration_seconds; id }

type t = {
  authorization_token : string prop;
  domain : string prop;
  domain_owner : string prop;
  duration_seconds : float prop;
  expiration : string prop;
  id : string prop;
}

let make ?domain_owner ?duration_seconds ?id ~domain __id =
  let __type = "aws_codeartifact_authorization_token" in
  let __attrs =
    ({
       authorization_token =
         Prop.computed __type __id "authorization_token";
       domain = Prop.computed __type __id "domain";
       domain_owner = Prop.computed __type __id "domain_owner";
       duration_seconds =
         Prop.computed __type __id "duration_seconds";
       expiration = Prop.computed __type __id "expiration";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codeartifact_authorization_token
        (aws_codeartifact_authorization_token ?domain_owner
           ?duration_seconds ?id ~domain ());
    attrs = __attrs;
  }

let register ?tf_module ?domain_owner ?duration_seconds ?id ~domain
    __id =
  let (r : _ Tf_core.resource) =
    make ?domain_owner ?duration_seconds ?id ~domain __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
