(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cleanrooms_configured_table__table_reference = {
  database_name : string;  (** database_name *)
  table_name : string;  (** table_name *)
}
[@@deriving yojson_of]
(** aws_cleanrooms_configured_table__table_reference *)

type aws_cleanrooms_configured_table__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_cleanrooms_configured_table__timeouts *)

type aws_cleanrooms_configured_table = {
  allowed_columns : string list;  (** allowed_columns *)
  analysis_method : string;  (** analysis_method *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  table_reference :
    aws_cleanrooms_configured_table__table_reference list;
  timeouts : aws_cleanrooms_configured_table__timeouts option;
}
[@@deriving yojson_of]
(** aws_cleanrooms_configured_table *)

let aws_cleanrooms_configured_table ?description ?tags ?timeouts
    ~allowed_columns ~analysis_method ~name ~table_reference
    __resource_id =
  let __resource_type = "aws_cleanrooms_configured_table" in
  let __resource =
    {
      allowed_columns;
      analysis_method;
      description;
      name;
      tags;
      table_reference;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cleanrooms_configured_table __resource);
  ()
