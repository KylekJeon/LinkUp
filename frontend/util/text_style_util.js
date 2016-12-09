import React from 'react';

export const createParagraphs = (text) => {
  if(text !== undefined){
    const separateParagraphs = text.split("\n");
    const paragraphs = separateParagraphs.map((paragraphs) => (
      <p>{paragraphs}</p>
    ));
    return paragraphs;
  } else {
    return "";
  }

};
