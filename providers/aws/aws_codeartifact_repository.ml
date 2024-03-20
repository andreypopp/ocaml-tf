(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type external_connections = {
  external_connection_name : string prop;
      (** external_connection_name *)
}
[@@deriving yojson_of]
(** external_connections *)

type upstream = {
  repository_name : string prop;  (** repository_name *)
}
[@@deriving yojson_of]
(** upstream *)

type aws_codeartifact_repository = {
  description : string prop option; [@option]  (** description *)
  domain : string prop;  (** domain *)
  domain_owner : string prop option; [@option]  (** domain_owner *)
  id : string prop option; [@option]  (** id *)
  repository : string prop;  (** repository *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  external_connections : external_connections list;
  upstream : upstream list;
}
[@@deriving yojson_of]
(** aws_codeartifact_repository *)

let external_connections ~external_connection_name () :
    external_connections =
  { external_connection_name }

let upstream ~repository_name () : upstream = { repository_name }

let aws_codeartifact_repository ?description ?domain_owner ?id ?tags
    ?tags_all ~domain ~repository ~external_connections ~upstream ()
    : aws_codeartifact_repository =
  {
    description;
    domain;
    domain_owner;
    id;
    repository;
    tags;
    tags_all;
    external_connections;
    upstream;
  }

type t = {
  administrator_account : string prop;
  arn : string prop;
  description : string prop;
  domain : string prop;
  domain_owner : string prop;
  id : string prop;
  repository : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?domain_owner ?id ?tags ?tags_all ~domain
    ~repository ~external_connections ~upstream __id =
  let __type = "aws_codeartifact_repository" in
  let __attrs =
    ({
       administrator_account =
         Prop.computed __type __id "administrator_account";
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       domain = Prop.computed __type __id "domain";
       domain_owner = Prop.computed __type __id "domain_owner";
       id = Prop.computed __type __id "id";
       repository = Prop.computed __type __id "repository";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codeartifact_repository
        (aws_codeartifact_repository ?description ?domain_owner ?id
           ?tags ?tags_all ~domain ~repository ~external_connections
           ~upstream ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?domain_owner ?id ?tags
    ?tags_all ~domain ~repository ~external_connections ~upstream
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?domain_owner ?id ?tags ?tags_all ~domain
      ~repository ~external_connections ~upstream __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
