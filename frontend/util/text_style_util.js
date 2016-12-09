import React from 'react';

export const createParagraphs = (text) => {
  if(text !== undefined){
    const separateParagraphs = text.split("\n");
    const paragraphs = separateParagraphs.map((paragraphs, idx) => (
      <p key={idx}>{paragraphs}</p>
    ));
    return paragraphs;
  } else {
    return "";
  }

};
