(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_resourceexplorer2_index = {
  tags : (string * string prop) list option; [@option]  (** tags *)
  type_ : string prop; [@key "type"]  (** type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_resourceexplorer2_index *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_resourceexplorer2_index ?tags ?timeouts ~type_ () :
    aws_resourceexplorer2_index =
  { tags; type_; timeouts }

type t = {
  arn : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?tags ?timeouts ~type_ __id =
  let __type = "aws_resourceexplorer2_index" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
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
      yojson_of_aws_resourceexplorer2_index
        (aws_resourceexplorer2_index ?tags ?timeouts ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ?timeouts ~type_ __id =
  let (r : _ Tf_core.resource) = make ?tags ?timeouts ~type_ __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
