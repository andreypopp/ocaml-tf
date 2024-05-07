(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type provisioning_artifact_parameters = {
  description : string prop option; [@option]
  disable_template_validation : bool prop option; [@option]
  name : string prop option; [@option]
  template_physical_id : string prop option; [@option]
  template_url : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : provisioning_artifact_parameters) -> ()

let yojson_of_provisioning_artifact_parameters =
  (function
   | {
       description = v_description;
       disable_template_validation = v_disable_template_validation;
       name = v_name;
       template_physical_id = v_template_physical_id;
       template_url = v_template_url;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_template_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "template_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_template_physical_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "template_physical_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_template_validation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_template_validation", arg in
             bnd :: bnds
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
    : provisioning_artifact_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_provisioning_artifact_parameters

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_servicecatalog_product = {
  accept_language : string prop option; [@option]
  description : string prop option; [@option]
  distributor : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  owner : string prop;
  support_description : string prop option; [@option]
  support_email : string prop option; [@option]
  support_url : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  type_ : string prop; [@key "type"]
  provisioning_artifact_parameters :
    provisioning_artifact_parameters list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_servicecatalog_product) -> ()

let yojson_of_aws_servicecatalog_product =
  (function
   | {
       accept_language = v_accept_language;
       description = v_description;
       distributor = v_distributor;
       id = v_id;
       name = v_name;
       owner = v_owner;
       support_description = v_support_description;
       support_email = v_support_email;
       support_url = v_support_url;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
       provisioning_artifact_parameters =
         v_provisioning_artifact_parameters;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_provisioning_artifact_parameters
             v_provisioning_artifact_parameters
         in
         ("provisioning_artifact_parameters", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_support_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "support_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_support_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "support_email", arg in
             bnd :: bnds
       in
       let bnds =
         match v_support_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "support_description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_owner in
         ("owner", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_distributor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "distributor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accept_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "accept_language", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_servicecatalog_product -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_servicecatalog_product

[@@@deriving.end]

let provisioning_artifact_parameters ?description
    ?disable_template_validation ?name ?template_physical_id
    ?template_url ?type_ () : provisioning_artifact_parameters =
  {
    description;
    disable_template_validation;
    name;
    template_physical_id;
    template_url;
    type_;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let aws_servicecatalog_product ?accept_language ?description
    ?distributor ?id ?support_description ?support_email ?support_url
    ?tags ?tags_all ?timeouts ~name ~owner ~type_
    ~provisioning_artifact_parameters () : aws_servicecatalog_product
    =
  {
    accept_language;
    description;
    distributor;
    id;
    name;
    owner;
    support_description;
    support_email;
    support_url;
    tags;
    tags_all;
    type_;
    provisioning_artifact_parameters;
    timeouts;
  }

type t = {
  tf_name : string;
  accept_language : string prop;
  arn : string prop;
  created_time : string prop;
  description : string prop;
  distributor : string prop;
  has_default_path : bool prop;
  id : string prop;
  name : string prop;
  owner : string prop;
  status : string prop;
  support_description : string prop;
  support_email : string prop;
  support_url : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?accept_language ?description ?distributor ?id
    ?support_description ?support_email ?support_url ?tags ?tags_all
    ?timeouts ~name ~owner ~type_ ~provisioning_artifact_parameters
    __id =
  let __type = "aws_servicecatalog_product" in
  let __attrs =
    ({
       tf_name = __id;
       accept_language = Prop.computed __type __id "accept_language";
       arn = Prop.computed __type __id "arn";
       created_time = Prop.computed __type __id "created_time";
       description = Prop.computed __type __id "description";
       distributor = Prop.computed __type __id "distributor";
       has_default_path =
         Prop.computed __type __id "has_default_path";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owner = Prop.computed __type __id "owner";
       status = Prop.computed __type __id "status";
       support_description =
         Prop.computed __type __id "support_description";
       support_email = Prop.computed __type __id "support_email";
       support_url = Prop.computed __type __id "support_url";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalog_product
        (aws_servicecatalog_product ?accept_language ?description
           ?distributor ?id ?support_description ?support_email
           ?support_url ?tags ?tags_all ?timeouts ~name ~owner ~type_
           ~provisioning_artifact_parameters ());
    attrs = __attrs;
  }

let register ?tf_module ?accept_language ?description ?distributor
    ?id ?support_description ?support_email ?support_url ?tags
    ?tags_all ?timeouts ~name ~owner ~type_
    ~provisioning_artifact_parameters __id =
  let (r : _ Tf_core.resource) =
    make ?accept_language ?description ?distributor ?id
      ?support_description ?support_email ?support_url ?tags
      ?tags_all ?timeouts ~name ~owner ~type_
      ~provisioning_artifact_parameters __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
