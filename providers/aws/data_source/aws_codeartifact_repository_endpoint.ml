(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_codeartifact_repository_endpoint = {
  domain : string prop;
  domain_owner : string prop option; [@option]
  format : string prop;
  id : string prop option; [@option]
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codeartifact_repository_endpoint) -> ()

let yojson_of_aws_codeartifact_repository_endpoint =
  (function
   | {
       domain = v_domain;
       domain_owner = v_domain_owner;
       format = v_format;
       id = v_id;
       repository = v_repository;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
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
    : aws_codeartifact_repository_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codeartifact_repository_endpoint

[@@@deriving.end]

let aws_codeartifact_repository_endpoint ?domain_owner ?id ~domain
    ~format ~repository () : aws_codeartifact_repository_endpoint =
  { domain; domain_owner; format; id; repository }

type t = {
  domain : string prop;
  domain_owner : string prop;
  format : string prop;
  id : string prop;
  repository : string prop;
  repository_endpoint : string prop;
}

let make ?domain_owner ?id ~domain ~format ~repository __id =
  let __type = "aws_codeartifact_repository_endpoint" in
  let __attrs =
    ({
       domain = Prop.computed __type __id "domain";
       domain_owner = Prop.computed __type __id "domain_owner";
       format = Prop.computed __type __id "format";
       id = Prop.computed __type __id "id";
       repository = Prop.computed __type __id "repository";
       repository_endpoint =
         Prop.computed __type __id "repository_endpoint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codeartifact_repository_endpoint
        (aws_codeartifact_repository_endpoint ?domain_owner ?id
           ~domain ~format ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?domain_owner ?id ~domain ~format ~repository
    __id =
  let (r : _ Tf_core.resource) =
    make ?domain_owner ?id ~domain ~format ~repository __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
