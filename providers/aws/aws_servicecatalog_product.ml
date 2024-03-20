(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type provisioning_artifact_parameters = {
  description : string prop option; [@option]  (** description *)
  disable_template_validation : bool prop option; [@option]
      (** disable_template_validation *)
  name : string prop option; [@option]  (** name *)
  template_physical_id : string prop option; [@option]
      (** template_physical_id *)
  template_url : string prop option; [@option]  (** template_url *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** provisioning_artifact_parameters *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_servicecatalog_product = {
  accept_language : string prop option; [@option]
      (** accept_language *)
  description : string prop option; [@option]  (** description *)
  distributor : string prop option; [@option]  (** distributor *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  owner : string prop;  (** owner *)
  support_description : string prop option; [@option]
      (** support_description *)
  support_email : string prop option; [@option]  (** support_email *)
  support_url : string prop option; [@option]  (** support_url *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
  provisioning_artifact_parameters :
    provisioning_artifact_parameters list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_product *)

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
