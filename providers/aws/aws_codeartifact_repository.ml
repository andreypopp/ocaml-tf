(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type external_connections = {
  external_connection_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : external_connections) -> ()

let yojson_of_external_connections =
  (function
   | { external_connection_name = v_external_connection_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_external_connection_name
         in
         ("external_connection_name", arg) :: bnds
       in
       `Assoc bnds
    : external_connections -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_external_connections

[@@@deriving.end]

type upstream = { repository_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : upstream) -> ()

let yojson_of_upstream =
  (function
   | { repository_name = v_repository_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_name
         in
         ("repository_name", arg) :: bnds
       in
       `Assoc bnds
    : upstream -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_upstream

[@@@deriving.end]

type aws_codeartifact_repository = {
  description : string prop option; [@option]
  domain : string prop;
  domain_owner : string prop option; [@option]
  id : string prop option; [@option]
  repository : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  external_connections : external_connections list;
  upstream : upstream list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codeartifact_repository) -> ()

let yojson_of_aws_codeartifact_repository =
  (function
   | {
       description = v_description;
       domain = v_domain;
       domain_owner = v_domain_owner;
       id = v_id;
       repository = v_repository;
       tags = v_tags;
       tags_all = v_tags_all;
       external_connections = v_external_connections;
       upstream = v_upstream;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_upstream v_upstream in
         ("upstream", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_external_connections
             v_external_connections
         in
         ("external_connections", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_codeartifact_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codeartifact_repository

[@@@deriving.end]

let external_connections ~external_connection_name () :
    external_connections =
  { external_connection_name }

let upstream ~repository_name () : upstream = { repository_name }

let aws_codeartifact_repository ?description ?domain_owner ?id ?tags
    ?tags_all ?(external_connections = []) ?(upstream = []) ~domain
    ~repository () : aws_codeartifact_repository =
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

let make ?description ?domain_owner ?id ?tags ?tags_all
    ?(external_connections = []) ?(upstream = []) ~domain ~repository
    __id =
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
           ?tags ?tags_all ~external_connections ~upstream ~domain
           ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?domain_owner ?id ?tags
    ?tags_all ?(external_connections = []) ?(upstream = []) ~domain
    ~repository __id =
  let (r : _ Tf_core.resource) =
    make ?description ?domain_owner ?id ?tags ?tags_all
      ~external_connections ~upstream ~domain ~repository __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
