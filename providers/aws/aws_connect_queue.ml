(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type outbound_caller_config = {
  outbound_caller_id_name : string prop option; [@option]
      (** outbound_caller_id_name *)
  outbound_caller_id_number_id : string prop option; [@option]
      (** outbound_caller_id_number_id *)
  outbound_flow_id : string prop option; [@option]
      (** outbound_flow_id *)
}
[@@deriving yojson_of]
(** outbound_caller_config *)

type aws_connect_queue = {
  description : string prop option; [@option]  (** description *)
  hours_of_operation_id : string prop;  (** hours_of_operation_id *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  max_contacts : float prop option; [@option]  (** max_contacts *)
  name : string prop;  (** name *)
  quick_connect_ids : string prop list option; [@option]
      (** quick_connect_ids *)
  status : string prop option; [@option]  (** status *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  outbound_caller_config : outbound_caller_config list;
}
[@@deriving yojson_of]
(** aws_connect_queue *)

let outbound_caller_config ?outbound_caller_id_name
    ?outbound_caller_id_number_id ?outbound_flow_id () :
    outbound_caller_config =
  {
    outbound_caller_id_name;
    outbound_caller_id_number_id;
    outbound_flow_id;
  }

let aws_connect_queue ?description ?id ?max_contacts
    ?quick_connect_ids ?status ?tags ?tags_all ~hours_of_operation_id
    ~instance_id ~name ~outbound_caller_config () : aws_connect_queue
    =
  {
    description;
    hours_of_operation_id;
    id;
    instance_id;
    max_contacts;
    name;
    quick_connect_ids;
    status;
    tags;
    tags_all;
    outbound_caller_config;
  }

type t = {
  arn : string prop;
  description : string prop;
  hours_of_operation_id : string prop;
  id : string prop;
  instance_id : string prop;
  max_contacts : float prop;
  name : string prop;
  queue_id : string prop;
  quick_connect_ids : string list prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?max_contacts ?quick_connect_ids ?status
    ?tags ?tags_all ~hours_of_operation_id ~instance_id ~name
    ~outbound_caller_config __id =
  let __type = "aws_connect_queue" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       hours_of_operation_id =
         Prop.computed __type __id "hours_of_operation_id";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       max_contacts = Prop.computed __type __id "max_contacts";
       name = Prop.computed __type __id "name";
       queue_id = Prop.computed __type __id "queue_id";
       quick_connect_ids =
         Prop.computed __type __id "quick_connect_ids";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_queue
        (aws_connect_queue ?description ?id ?max_contacts
           ?quick_connect_ids ?status ?tags ?tags_all
           ~hours_of_operation_id ~instance_id ~name
           ~outbound_caller_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?max_contacts
    ?quick_connect_ids ?status ?tags ?tags_all ~hours_of_operation_id
    ~instance_id ~name ~outbound_caller_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?max_contacts ?quick_connect_ids ?status
      ?tags ?tags_all ~hours_of_operation_id ~instance_id ~name
      ~outbound_caller_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
