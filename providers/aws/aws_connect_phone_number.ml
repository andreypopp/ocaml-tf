(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type status = {
  message : string prop;  (** message *)
  status : string prop;  (** status *)
}
[@@deriving yojson_of]

type aws_connect_phone_number = {
  country_code : string prop;  (** country_code *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  prefix : string prop option; [@option]  (** prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_arn : string prop;  (** target_arn *)
  type_ : string prop; [@key "type"]  (** type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_connect_phone_number *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_connect_phone_number ?description ?id ?prefix ?tags ?tags_all
    ?timeouts ~country_code ~target_arn ~type_ () :
    aws_connect_phone_number =
  {
    country_code;
    description;
    id;
    prefix;
    tags;
    tags_all;
    target_arn;
    type_;
    timeouts;
  }

type t = {
  arn : string prop;
  country_code : string prop;
  description : string prop;
  id : string prop;
  phone_number : string prop;
  prefix : string prop;
  status : status list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_arn : string prop;
  type_ : string prop;
}

let make ?description ?id ?prefix ?tags ?tags_all ?timeouts
    ~country_code ~target_arn ~type_ __id =
  let __type = "aws_connect_phone_number" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       country_code = Prop.computed __type __id "country_code";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       phone_number = Prop.computed __type __id "phone_number";
       prefix = Prop.computed __type __id "prefix";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target_arn = Prop.computed __type __id "target_arn";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_phone_number
        (aws_connect_phone_number ?description ?id ?prefix ?tags
           ?tags_all ?timeouts ~country_code ~target_arn ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?prefix ?tags ?tags_all
    ?timeouts ~country_code ~target_arn ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?prefix ?tags ?tags_all ?timeouts
      ~country_code ~target_arn ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
